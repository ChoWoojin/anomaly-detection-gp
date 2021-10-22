close all;
clear all
%%%%
%%
load('2016_Dataset1.mat')
indexEvent1=[8353:8353+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(1);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([0.5,0.65])
box on
%%
load('2016_Dataset2.mat')
indexEvent1=[8929:8929+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(2);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([0.5,0.65])
box on
%%

%%%%
%%%%
%%%%

%%%%
%%
load('2016_Dataset1.mat')
indexEvent1=[8353:8353+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(11);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([1.5,3.5])
box on
%%
load('2016_Dataset2.mat')
indexEvent1=[8929:8929+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(12);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([1.5,3.5])
box on
