close all;
clear all

figure(1);hold
subplot(4,4,1)
%%
load('2014_Dataset1.mat')
subplot(4,4,1)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset2.mat')
subplot(4,4,2)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset3.mat')
subplot(4,4,3)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset4.mat')
subplot(4,4,4)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset5.mat')
subplot(4,4,5)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset6.mat')
subplot(4,4,6)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset7.mat')
subplot(4,4,7)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on

%%
%%
%%
%%
%%
load('2015_Dataset1.mat')
p2=p2*100;
subplot(4,4,8)
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on

%%
load('2015_Dataset2.mat')
p2=p2*100;
subplot(4,4,9)
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on


%%
load('2015_Dataset3.mat')
p2=p2*100;
subplot(4,4,10)
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on



%%
load('2015_Dataset4.mat')
p2=p2*100;
subplot(4,4,11)
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on



%%
load('2015_Dataset5.mat')
p2=p2*100;
subplot(4,4,12)
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on

%%
load('2015_Dataset6.mat')
p2=p2*100;
subplot(4,4,13)
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on


%%
load('2016_Dataset1.mat')
p2=p2*100;
subplot(4,4,14)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2016_Dataset2.mat')
p2=p2*100;
subplot(4,4,15)
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on







