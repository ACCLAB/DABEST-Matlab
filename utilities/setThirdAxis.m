function [num, num3, ax1Pos, x, y, x2, y2, yNew, y2New] = setThirdAxis(refAxes, av, md)


ax1Pos = get(refAxes,'position');
set(gcf, 'currentAxes', refAxes);

%     Get the normalized x-y coordinates of the means
[x,y] = dsxy2figxy(gca, 1, av(1));
[x2, y2] = dsxy2figxy(gca, 2, av(2));

refLims = get(refAxes, 'YLim');
normDiff = md/(refLims(2) - refLims(1));

num = 1;
num3 =2;
yNew = y;
y2New = y2;
yDiff = yNew - y2New;

severity = calcSeverity(normDiff);


if md <0
    
    while num <= severity
        num3 = num3 + 1;
        yNew = yNew + yDiff;
        num= num+1;     
    end
   
elseif md > 0
    
    while num <= severity
        yNew = yNew + yDiff;
        num3 = num3 + 1;
        num = num + 1;
    end

else
    return
end

end