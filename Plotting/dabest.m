function [ss] = dabest(csvFile, varargin)

d = readtable(csvFile);
identifiers = d(:,{'Identifiers'});
identifiers = table2cell(identifiers);
data = d(:,{'Values'});
data = table2array(data);
close(gcf);

if length(varargin) > 0;
    if strcmp(varargin{1},'Paired');
        [ss] = FscatJit2(identifiers, data,'Y');
    
    else strcmp(varargin{1},'mergeGroups');
        [ss] = FscatJit2_mergeGroups(identifiers, data);
        
    end
else
    [ss] = FscatJit2(identifiers, data);
end

end