function [e1] = tripleErrorBars(av, er, col, barwidth, linewidth, middle_bar)

% Takes a mean, its error(s) and plot error bars with a particular style

% % % for testing___________________
% clear all
% close all
% clc
% load 'scatdistTestData.mat'
% col=4;
% vec=vecs{col};
% av=mean(vec);
% stdvec=std(vec);
% er=stdvec/sqrt(((length(vec))-1))
% % er=[ 1 2; 12 7]
% linewidth=1;
% barwidth=10;
% middle_bar='on';
% % %_________________________________

%% Accommodate asymmetric error bars
if numel(er)==1
    er(1)=er;
    er(2)=er;
end

%% Draw the error bars
hold on;
e1=errorbar(col, av, er(1,:), er(2,:), 'Color',[0 0 0],'LineWidth', linewidth, 'MarkerSize', 10, 'LineStyle','none');

% errorbar_tick(e1, barwidth, 'units')

%errorbar_tick(e1, barwidth, 'units')


%% Insert a marker for the mean
hold on
switch middle_bar
    case 'on'
        zeroh=zeros(1 , length(av));
        e2=scatter(col, av,1,'MarkerEdgeColor','k', 'MarkerFaceColor', 'w');
%         e2=errorbar(col, av, zeroh, zeroh, 'Color',[0 0 0],'LineWidth', linewidth, 'LineStyle','none');
%         errorbar_tick(e2, barwidth, 'units')
    otherwise
end




