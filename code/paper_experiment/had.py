import GPy
import numpy as np
import matplotlib.pyplot as plt
import pylab as pb
import pickle
import os
from scipy.stats import chisqprob

class HierAD:
   
    def __init__(self, data1, data2, path_name):
        """
        data1 : numpy array 
        first time series data (output1)
        
        data2 : numpy array 
        second time series data (output2)
        
        x : numpy array
        time series (input)
    
        """ 
        self.data1 = data1
        self.data2 = data2
        
        #self.x = np.arange(0,len(data2)/10,0.1)[:,None]
        self.x = np.arange(0,len(data2))[:,None]
        self.path = path_name
        
        if os.path.isfile(path_name):
            f = open(self.path, 'rb')
            self.kern = pickle.load(f)
            f.close()
        else:
            self.kern = None
        
    def training_save(self):
        """ 
        Training and save multi output GP
        
        Kernel : RBF + PeriodicExponential
        kernel saving
        
        """
        k1 = GPy.kern.RBF(1)
        k2 = GPy.kern.PeriodicExponential(1)
        lcm = GPy.util.multioutput.LCM(input_dim=1, num_outputs=2, kernels_list=[k1,k2])
        mul = GPy.models.GPCoregionalizedRegression([self.x, self.x], [self.data1, self.data2], kernel=lcm)
        mul.optimize()
        
        kern = mul.kern.copy()
        n1 = mul.likelihood.Gaussian_noise_0.variance[0].copy()
        n2 = mul.likelihood.Gaussian_noise_1.variance[0].copy()
        
        f = open(self.path,'wb')
        pickle.dump([kern, n1, n2], f)
        f.close()
        
        return

    def calculate_n(self, X, x_t):
        """
        calculate number density by gaussian smoother
                
        X : numpy array
        All observations
        
        x_t : float
        Test point 
        
        """
        X_t = x_t * np.ones(len(X))[:,None]
        #h = 2* min(self.kern[0].ICM0.Mat32.lengthscale[0], self.kern[0].ICM1.Mat52.lengthscale[0])
        h = self.kern[0].ICM0.rbf.lengthscale[0]
        k = ((X - X_t)**2) / (2*h**2) 
        ke = np.exp(-k)
        n = np.sum(ke)
    
        return n

    def z_score(self, n):
        """
        calculate z score by GP-EVT (significance level : 0.98)        
        """
        alpha = (2 * np.log(n))**(-0.5)
        beta = (2 * np.log(n))**(0.5) - (np.log(np.log(n)) + np.log(2 * np.pi))/(2 * (2 * np.log(n))**0.5)
        zp = beta - alpha * np.log(-np.log(0.98))
    
        return zp
    
    def build_XI(self, input_list):
        """
        To make inputs x in multi-output setting
        
        input_list : list of numpy array
        inputs of each outputs
        """
        num_outputs = len(input_list)
        I = np.hstack( [np.repeat(j,_x.shape[0]) for _x,j in zip(input_list,range(num_outputs))] )
        X = np.vstack(input_list)
        X = np.hstack([X,I[:,None]])
        I = {'output_index':I[:,None]}
        
        return X,I
    
    def Mahalanobis_distance(self, model, x_test, y_obs):
        """
        calculate Mahalanobis_distance
        
        kern : GPy kernel object
        kernel of model
        
        x_test : numpy array
        test points
        
        y_pred : numpy array
        prediction mean of test points
        """
        X, I = self.build_XI([x_test,x_test])
        mean, var = model.predict(X, full_cov=True, Y_metadata=I)
        l = len(x_test)
        MD2 = np.dot(np.dot(np.transpose(y_obs - mean[l:2*l]), np.linalg.inv(var[l:2*l, l:2*l])), y_obs - mean[l:2*l])

        return MD2

    def anomaly_detection(self, start, end, window, trend_w):
        """
        point-wise anomaly detection
        
        start : integer 
        startpoint
        
        window : integer
        window size
        """
        if self.kern:
            pass
        else:
            print("You need to train GP model")
        
        it = list(range(start, start + window)) # 첫번째 timeseries의 range
        kt = it.copy()                          # 두번째 timeseries의 range
        alarm_p = []
        alarm_t = []
                
        
        for i in range(start + window, end): # test point = i
            m = GPy.models.GPCoregionalizedRegression([self.x[it], self.x[kt]], [self.data1[it], self.data2[kt]], kernel = self.kern[0])
            m['.*Gaussian_noise_0.variance'].constrain_fixed(self.kern[1])
            m['.*Gaussian_noise_1.variance'].constrain_fixed(self.kern[2])
            # m.plot(plot_limits=[0,110],fixed_inputs=[(1,1)],which_data_rows=slice(len(self.x[it]),len(self.x[it])+len(self.x[kt])))
            # Point-wise anomaly detection
            n = self.calculate_n(self.x[kt], self.x[i])
            zp = self.z_score(n)
            
            if i == start + window:                          # 초기 모델의 extreme quantile과 mean
                jt = kt + list([i])                       
                X,I = self.build_XI([self.x[jt], self.x[jt]])
                mu,var = m.predict(X,Y_metadata=I,kern=m.kern,likelihood=m.likelihood)
                mean = mu[int(len(mu)/2):len(mu)]
                variance = var[int(len(mu)/2):len(mu)]
    
                con_u = mean + np.sqrt(variance)*zp
                con_l = mean - np.sqrt(variance)*zp
                
                chi_sq = np.ones(window)[:,None]
            else:                                       # Test point의 그 순간의 extream boundary와 mean
                X,I = self.build_XI([self.x[i], self.x[i]])
                mu,var = m.predict(X,Y_metadata=I,kern=m.kern,likelihood=m.likelihood)
                
                con_u = np.append(con_u, mu[1] + np.sqrt(var[1])*zp)
                con_l = np.append(con_l, mu[1] - np.sqrt(var[1])*zp)
                mean = np.append(mean, mu[1])
      
            if self.data2[i] > con_u[i] or self.data2[i] < con_l[i]: # alarm이 울리면 첫번째 time series는 update하고 두번째는 그대로
                alarm_p.append(i)
                it = it + list([i])
            else:
                it.pop(0)                                   # Window shifting
                it = it + list([i])
                kt.pop(0)
                kt = kt + list([i])
                
                if len(alarm_p) > 0:
                    if alarm_p[len(alarm_p)-1] in kt:          # 이상이라고 판단된 x가 하나도 안들어있으면 첫번째 timeseries 다시 초기화
                        pass
                    else:
                        it = kt.copy()
   
            # Trend anomaly detection                
                   
            m2 = GPy.models.GPCoregionalizedRegression([self.x[it], self.x[kt[0:len(kt)-trend_w]]],[self.data1[it],self.data2[kt[0:len(kt)-trend_w]]],kernel = self.kern[0])
            m2['.*Gaussian_noise_0.variance'].constrain_fixed(self.kern[1])
            m2['.*Gaussian_noise_1.variance'].constrain_fixed(self.kern[2])
            
            ct = kt[len(kt)-trend_w:len(kt)]
            md2 = self.Mahalanobis_distance(m2, self.x[ct], self.data2[ct])
            cs = chisqprob(md2, len(ct))[0][0]
            chi_sq = np.append(chi_sq,cs)
            
        return {'index' : range(start,end), 'upper_thresholds' : con_u, 'lower_thresholds' : con_l, 'point_alarms': alarm_p, 'mean' : mean, 'p-value' : chi_sq}
    
    def plot(self, results):
        index = results['index']
        alarm = results['point_alarms']
        con_u = results['upper_thresholds']
        con_l = results['lower_thresholds']
        mean = results['mean']
        chi_sq = results['p-value']
        
        fig = pb.figure(figsize=(14,12))
        fig.add_subplot(111, frameon=False)
        plt.tick_params(labelcolor='none', top='off', bottom='off', left='off', right='off')
        plt.grid(False)
    
        #Output 1
        ax1 = fig.add_subplot(211)
        ax1.set_xlim([index[0],index[-1]])
        ax1.set_title('Pointwise detection',fontsize=20)
        ax1.set_ylabel(r'$Pressure$',fontsize = 24)
        ax1.tick_params(labelsize=20)
        
        ax1.scatter(self.x[index], self.data2[index], s = 40, color='mediumblue', zorder=2, edgecolors='black') 
        ax1.scatter(self.x[alarm], self.data2[alarm],s = 40, color='crimson', zorder=3, edgecolors='black')
        ax1.plot(self.x[index], con_u, color='red', label="Extreme boundary",lw=1.5)
        ax1.plot(self.x[index], con_l, color='red', lw=1.5)
        ax1.fill_between(self.x[index][:,0], con_u, con_l, color='pink', alpha=0.3, label="Extreme quantile")
        ax1.plot(self.x[index], mean, color='blue', label="mean", lw=1.5)
        ax1.legend(fontsize=22, loc=3)


        #Output 2
        ax2 = fig.add_subplot(212)
        ax2.set_xlim([index[0],index[-1]])
        ax2.set_ylim([-0.1,1.2])
        ax2.set_title('Trend detection',fontsize=20)
        ax2.tick_params(labelsize=20)
        ax2.set_xlabel(r'$Time$',fontsize=24)
        ax2.set_ylabel(r'$p-value$',fontsize = 24)
        ax2.plot(self.x[index], chi_sq, lw=1.6)
        a = np.linspace(index[0],index[-1],100)
        th = 0.02 * np.ones(a.shape)
        ax2.plot(a, th, color='red', label="Threshold=0.02", lw=1.6)
        ax2.legend(fontsize=22, loc=3)

        #fig.savefig('9.png',bbox_inches='tight')
        
        return fig