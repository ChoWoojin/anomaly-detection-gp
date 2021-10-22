close all;
clear all

figure(1);hold
subplot(4,4,1)
%%
load('2014_Dataset1.mat')
figure(1);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset2.mat')
figure(2);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset3.mat')
figure(3);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset4.mat')
figure(4);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset5.mat')
figure(5);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset6.mat')
figure(6);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset7.mat')
figure(7);hold
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
figure(11);hold
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on

%%
load('2015_Dataset2.mat')
p2=p2*100;
figure(12);hold
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on


%%
load('2015_Dataset3.mat')
p2=p2*100;
figure(13);hold
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on



%%
load('2015_Dataset4.mat')
p2=p2*100;
figure(14);hold
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on



%%
load('2015_Dataset5.mat')
p2=p2*100;
figure(15);hold
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on

%%
load('2015_Dataset6.mat')
p2=p2*100;
figure(16);hold
plot(t*24,p2,'.b')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([100,300])
box on


%%
load('2016_Dataset1.mat')
p2=p2*100;
figure(31);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2016_Dataset2.mat')
p2=p2*100;
figure(32);hold
plot(t*24,p2,'.b')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on







