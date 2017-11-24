function contrastplot(csvFile, varargin)

d = readtable(csvFile);
identifiers = d(:,{'Identifiers'});
identifiers = table2cell(identifiers);
data = d(:,{'Values'});
data = table2array(data);
close(gcf);

if length(varargin) > 0
    [ss,avr,moes] = FscatJit2_CombinedControls(identifiers, data)
else
    [ss] = FscatJit2(identifiers, data)
end

end