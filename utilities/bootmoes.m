function [av, moes, bci] = bootmoes(vec)

% Takes in a vector (that can be NaN-contaminated), calculates mean, moes,
% and Cis by bootstrap

%% For testing
% clear all; close all; clc
% vec=[0.455973541079959;0.607332882904319;0.504551752988633;0.590645277791557;0.541899635550893;0.482477113888613;NaN];

%% Calculate mean
av=nanmean(vec);

%% Calculate CIs
hm=@(x) nanmean(x);
bci=bootci(10000, hm, vec)';


%% MOEs
moes(1)=abs(av-bci(1));
moes(2)=abs(av-bci(2));


