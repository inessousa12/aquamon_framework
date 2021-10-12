%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\In�s\Dropbox\Mestrado\Tese\Reports\Data Quality\Tese Jo�o Penim\ANNODE-Framework-master\scripts\lnec_temp_data.csv
%
% Auto-generated by MATLAB on 28-Sep-2021 18:42:15

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 2);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["x", "y"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, 1, "InputFormat", "yyyy-MM-dd HH:mm");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
lnectempdata = readtable("C:\Users\In�s\Documents\MATLAB\lnec_temp_data.csv", opts);
save('lnec_temp_data.mat','lnectempdata')

%% Clear temporary variables
clear opts