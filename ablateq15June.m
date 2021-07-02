clc; clear; close all; tic

% This code solves the ablation equation  expresed in 
% https://doi.org/10.1016/S0032-0633(02)00197-6 Molina et al 2003
% This code solves the equation of motion, ablation and energy
% silmutaneously. It has one species (Mg)
% Creator : Masoom Jethwa 
% First version : 1 June 2021
% modified date : 15 June 2021

% remarks (if any):


%% Aplha and Beta for linera density of individual species
% First we calcualted the Beta and put its value in alpha
% vvi is the minimum velocity of the meteoroid that can produce ionization
% vvfe=9.4 km.s-1; vvi=vvmg=11.1 km.s-1; vvsi=11.0 km.s-1
% vv is the entry velocity of the micromet = 35
% kki is a value experimentally determined 
% kkfe=34.5e-06 ; kki=kkmg=9.29e-06 ; kksi=18.5e-06

vvi = 11.1;
vv = 35.0;
vvsqr08=(vv)^0.8;
vvisq = (vv-vvi)^2;
kki=9.29e-06;
betai=kki*vvisq*vvsqr08;

% ppi is the ratio of atom i type to the total,
% Cosmic dust is mainly composed of carbonaceous chondrites,
% that have a relative concentration of Mg=6.1%, Si=5.7% and Fe=5.1% 
% Ref: (Anders and Ebihara, 1982)
ppi=6.1;

% calculated by using an analytical expression value for micrometeoroids 
% with v0 < 35km.s-1  for which no secondary ionization or recombination 
% takes place (Jones, 1997)


mmi=1.0;
alphai= ppi*betai/mmi/vv;


%% 




toc