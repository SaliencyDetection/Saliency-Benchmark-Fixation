clear;clc;close all;

%% CVBIOUC_Settings
INPUTDATASET='./DATASET_STIMULI/';
EXTENSION='*.jpg';
OUTPUTSM='./DATASET_SaliencyMaps/';
%% END CVBIOUC_Settings

ids=dir(fullfile((INPUTDATASET),EXTENSION)); 
for q=1:numel(ids) 
    filename=fullfile(INPUTDATASET,ids(q).name); 
    labMap = signatureSal(filename);
    SM{q,1}=labMap;
    imwrite(SM{q,1},strcat(OUTPUTSM,ids(q).name));
end