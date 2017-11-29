function [s1] = scatJit(vec, jitFactor, col, circleSize, color)

% Takes a vector and plots it as a jittered scatter around value col
% Adam Claridge-Chang 20120411. Improved to modify jitter based on the
% histogram
% Adam Claridge-Chang 20120413  Further edited to use the bin
% information to spread out the data evenly

% % for testing_____________________
% clear all
% close all
% clc
% load  scatdistTestData.mat
% col=4;
% vec=vecs{1};
% jitFactor=0.2
% % _________________________________


% make jitter factors
sv=size(vec);
A=[-1,1];
jits = A(randi([1,2],sv(1),sv(2)));
% jits= ones(sv(1),sv(2));
jits=jits'.*jitFactor;

% multiply jit factors by a histogram-based bias
[n,xout] = hist(vec, 10); %NOTE: I am using the default 10 bins!
nnorm= n/max(n);

%find bin half width
bhw=(xout(2)-xout(1))./2;

%find bin boundaries and multiply jitters by normalization factor
%Note: addition of small value to the bottom end of the histogram to solve
%a rounding error problem.
for idx=1:length(xout)
    if idx==1
        inBins=find(vec >= (xout(idx) - (bhw+0.00001)) & vec < (xout(idx) + bhw));
    else
        inBins=find(vec > (xout(idx) - bhw) & vec <= (xout(idx) + bhw+0.00001));
    end
    % find how many data points there are in a bin
    jits(inBins)=jits(inBins).*nnorm(idx);
    binjits = jits(inBins);
    bjn=numel(binjits);
    % spread out the bin members along the x-axis
    if bjn >0;
        bjn=bjn-1;
        step= (binjits(1).*2/bjn);
        bjrange=[(binjits(1)*-1):step:binjits(1)];
        jits(inBins)=bjrange;
    end
    
    
end

%make clones of vec
clone=repmat(col, sv(1), sv(2));
clonejit=clone+jits;
% s1 = scatter(clonejit, vec, 50, 'k', 'filled');

if isempty(circleSize)
    circleSize=30;
end
s1 = scatter(clonejit, vec, circleSize , color, 'filled');

