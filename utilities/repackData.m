function [cellofMats, uIdents] = repackData (identifiers, data)

%cellofMats = repackData (identifiers, dataCel)
%e.g. repackData (fbmm.szGenotype, fbmm.hist)
%takes a datastructure like fbmm, and repackages a data cell from one field
%into a nan-padded matrix held inside a cell, one for each identifier type.
% Reworked 20120522 Adam Claridge-Chang to accommodate numeric identifiers


% %for testing_______________
% clear all
% close all
% clc
% %this fbmm file was generated from the data in CPH_003_datalist
% load repackData_testfile
% identifiers=fbmm.szGenotype;
% %used cX to test this, but is intended for fbmm.hist
% data=fbmm.cX;
% %this option to test vector-type data
% % data=fbmm.mdist;
% 
% % This option to test numeric identifiers
% a=rand(length(identifiers),1);
% b=a*4;
% identifiers=ceil(b);
% %end testing_______________

% Extract data into a cell for each genotype,
uIdents = unique(identifiers);

% making sure to sort unique indentifier list (AdamCC 20111024) recoded for
% sorting based on file order 20120521 Adam Claridge-Chang
if iscell(uIdents)
    uIdents = re_sort_uidents(uIdents, identifiers);
else
    uIdents =sort(uIdents);
end
lu=length(uIdents);
cellofMats=cell(1,lu);

if iscell(data)== 4
    for idx=1:lu
        if iscell(uIdents)
            curEG=strcmp(uIdents{idx}, identifiers); %find the current szGenotype
        else
            curEG=find(identifiers==uIdents(idx));
        end
        
%         curEG= curEG==1;
        clear curCels
        curCels=(data(curEG));%extract the location data
        for cidx=1:length(curCels)
            clear curVec
            curVec(:, 1)=curCels{cidx};
            if cidx==1
                curMat=curVec;
            elseif cidx>=2
                curMat=nanpadcat(curMat, curVec, 'h');
            end
        end
        cellofMats{idx}=curMat;
    end
    
elseif isvector(data)==1
    for idx=1:lu
        if iscell(uIdents)
            curEG=strcmp(uIdents{idx}, identifiers); %find the current szGenotype
        else
            curEG=find(identifiers==uIdents(idx));
        end
%         curEG= curEG==1;
        clear curCels
        curCels=(data(curEG));%extract the location data
        for cidx=1:length(curCels)
            clear curVec
            curVec(:, 1)=curCels(cidx);
            if cidx==1
                curMat=curVec;
            elseif cidx>=2
                curMat=nanpadcat(curMat, curVec, 'v');
            end
        end
        cellofMats{idx}=curMat;
    end
    
    
else
    fprintf('\nerror in repackData function: Input data is neither cells nor vector -ACC \n')
    
end


