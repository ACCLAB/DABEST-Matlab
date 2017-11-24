function uidents = re_sort_uidents(uidents, identifiers)


% %for testing_______________
% clear all
% close all
% clc
% %this fbmm file was generated from the data in CPH_003_datalist
% load repackData_testfile
% % load lightcurvefbmm.mat
% identifiers=fbmm.szGenotype;
% uidents = unique(identifiers)
% %end testing_______________


lu=length(uidents);

firstThere=zeros(1,lu);
for idx=1:lu
    there=strcmp(uidents{idx}, identifiers);
    theres=find(there==1);
    firstThere(idx)=theres(1);
end

[~, indices] = sort(firstThere);

uidents=uidents(indices);