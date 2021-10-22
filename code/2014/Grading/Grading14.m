close all;
clear all
%%%%
%%
load('2014_Dataset1.mat')
indexEvent1=[8929:8929+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(1);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([5,7])
box on
%%
load('2014_Dataset2.mat')
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
ylim([2.9,3.2])
box on
%%
load('2014_Dataset3.mat')
indexEvent1=[8922:8922+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(3);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([2.9,3.2])
box on
%%
load('2014_Dataset4.mat')
indexEvent1=[8637:8637+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(4);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([5,7])
box on
%%
load('2014_Dataset5.mat')

indexEvent1=[3832:3832+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(5);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([5,7])
box on
%%
load('2014_Dataset6.mat')
indexEvent1=[5913:5913+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(6);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
box on
%%
load('2014_Dataset7.mat')
indexEvent1=[6936:6936+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(7);hold
plot(t(normal1)*24,p1(normal1),'.b')
plot(t(normal2)*24,p1(normal2),'.b')
plot(t(indexEvent1)*24,p1(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_1')
xlim([0,24])
ylim([5,7])
box on

%%%%
%%%%
%%%%

%%%%
%%
load('2014_Dataset1.mat')
indexEvent1=[8929:8929+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(11);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset2.mat')
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
ylim([100,300])
box on
%%
load('2014_Dataset3.mat')
indexEvent1=[8922:8922+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(13);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset4.mat')
indexEvent1=[8637:8637+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(14);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset5.mat')
indexEvent1=[3832:3832+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(15);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset6.mat')
indexEvent1=[5913:5913+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(16);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on
%%
load('2014_Dataset7.mat')
indexEvent1=[6936:6936+288];
normal1=1:indexEvent1(1);
normal2=indexEvent1(end)+1:length(t);

figure(17);hold
plot(t(normal1)*24,p2(normal1),'.b')
plot(t(normal2)*24,p2(normal2),'.b')
plot(t(indexEvent1)*24,p2(indexEvent1),'or','Markerfacecolor','r')
xlabel('Time (h)')
ylabel('P_2')
xlim([0,24])
ylim([100,300])
box on