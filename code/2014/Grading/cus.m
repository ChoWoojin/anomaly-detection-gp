close all;
clear all

load('2014_Dataset1.mat')
csvread('dataset 5211.csv')
plot(p2)

x = 1:length(p2);
cusum(p2)
% findchangepts(p2)