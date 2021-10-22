
close all
clear all

















%%%%
%%%%
%%%%
%%
load('2015_Dataset1.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day

indexEvent1 = [7395:7395+288];%??? ??: 11? 2? 
indexEvent2 = [8671:8671+288];%??? ??: 11? 26? 

normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:indexEvent2(1)-1;
normal3=indexEvent2(end)+1:length(t);

figure(1);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
plot(t(normal3)*24,p1(normal3),'.b')
plot(t(indexEvent2)*24,p1(indexEvent2),'og','Markerfacecolor','g')
ylabel('P_1')
xlabel('Time(h)')
xlim([0,24])
box on

ylim([.5,.7])



%%
load('2015_Dataset2.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8625:8626+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(2);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
ylabel('P_1')
xlabel('Time(h)')
xlim([0,24])
box on
ylim([.5,.7])


%%
load('2015_Dataset3.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8646-6:8646-6+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(3);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
ylabel('P_1')
xlabel('Time(h)')
xlim([0,24])
box on
ylim([.5,.7])



%%
load('2015_Dataset4.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8647:8647+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(4);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
ylabel('P_1')
xlabel('Time(h)')
xlim([0,24])
box on
ylim([.5,.7])




%%
load('2015_Dataset5.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8934:8934+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(5);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
ylabel('P_1')
xlabel('Time(h)')
xlim([0,24])
box on
ylim([.29,.3])


%%
load('2015_Dataset6.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day


indexEvent1 = [8929:8929+288];%??? ??: 11? 2? 
indexEvent2 = [15388:15388+288];%??? ??: 11? 26? 

normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:indexEvent2(1)-1;
normal3=indexEvent2(end)+1:length(t);


figure(6);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
plot(t(normal3)*24,p1(normal3),'.b')
plot(t(indexEvent2)*24,p1(indexEvent2),'og','Markerfacecolor','g')
ylabel('P_1')
xlabel('Time(h)')
xlim([0,24])
box on
ylim([.5,.7])




%%%
%%%
%%


%%
load('2015_Dataset1.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day

indexEvent1 = [7395:7395+288];%??? ??: 11? 2? 
indexEvent2 = [8671:8671+288];%??? ??: 11? 26? 

normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:indexEvent2(1)-1;
normal3=indexEvent2(end)+1:length(t);

figure(11);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
plot(t(normal3)*24,p2(normal3),'.b')
plot(t(indexEvent2)*24,p2(indexEvent2),'og','Markerfacecolor','g')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([1,3.5])
box on

%%
load('2015_Dataset2.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8625:8626+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(12);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([1,3.5])
box on


%%
load('2015_Dataset3.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8646:8646+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(13);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([1,3.5])
box on



%%
load('2015_Dataset4.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8647:8647+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(14);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([1,3.5])
box on




%%
load('2015_Dataset5.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day
indexEvent1=[8934:8934+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(15);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([1,3.5])
box on


%%
load('2015_Dataset6.mat')
%duration: 2015.10.2 0AM to 2015.12.26
%288 data points per day


indexEvent1 = [8829:8829+288];%??? ??: 11? 2? 
indexEvent2 = [15388:15388+288];%??? ??: 11? 26? 

normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:indexEvent2(1)-1;
normal3=indexEvent2(end)+1:length(t);


figure(16);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
plot(t(normal3)*24,p2(normal3),'.b')
plot(t(indexEvent2)*24,p2(indexEvent2),'og','Markerfacecolor','g')
xlim([0,24])
xlabel('Time(h)')
ylabel('P_2')
ylim([1,3.5])
box on









