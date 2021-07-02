clc;clear; close all;tic



[~, ~, raw] = xlsread('C:\Users\masoom\Desktop\meteor\Meteor shower predicstion.xlsx','Sheet2','A2:C151');
% Create output variable
data = reshape([raw{:}],size(raw));
% Allocate imported array to column variable names
showers_year = data(:,1);
vgeokms = data(:,2);
s_vkms = data(:,3);
% Clear temporary variables
clearvars data raw;


figure(1)
histogram(showers_year)

xlim([2017 2021])
ylim([0 50])


toc