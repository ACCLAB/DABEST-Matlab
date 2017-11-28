%% (a)

% create a panel in gcf.
%
% "p" is called the "root panel", which is the special panel
% whose parent is the figure window, rather than another
% panel.
clc
close all
clear all
load 'c305a.mat'

p = panel();

% pack a 2x2 grid of panels into it.
p.pack(2, 2);
%% (b)

% plot into the first three panels
for m = 1:2
	for n = 1:2
		
		% skip the 2,2 panel
		if m == 2 && n == 2
			break
		end
		
		% select the panel (create an axis, and make that axis
		% current)
		p(m, n).select();
		
		% plot some stuff
        plot(fbmm.timePC,fbmm.mdist);
% 		plot(randn(100,1));
		xlabel('iSpeed');
		ylabel('TimePC');
		axis([0 100 0 1.1]);
		
	end
end

