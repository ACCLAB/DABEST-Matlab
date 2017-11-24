function severity = calcSeverity(normDiff)

if abs(normDiff) >=0.30 
  severity=0;  
elseif abs(normDiff) >= 0.10 && abs(normDiff) <0.30
    severity = 1;
elseif abs(normDiff) > 0.05 && abs(normDiff) <= 0.10
    severity = 2;
elseif abs(normDiff) > 0.035 && abs(normDiff)<= 0.05
    severity = 4;
elseif abs(normDiff) >0.02 && abs(normDiff)<= 0.035
    severity = 8;
elseif abs(normDiff) >0.01 && abs(normDiff)<=0.02
severity = 16;
elseif abs(normDiff) > 0.005 && abs(normDiff) <= 0.01
    severity =32;
elseif abs(normDiff) > 0.001 && abs(normDiff)<=0.005
    severity = 64;
elseif abs(normDiff)<=0.001
    severity = 128;
end