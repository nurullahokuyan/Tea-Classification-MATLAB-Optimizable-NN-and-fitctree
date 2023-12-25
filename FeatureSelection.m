% clc; clear all;
% load('Direk.mat')
Mdl = fitctree(Direk,'Snf','PredictorSelection','curvature',...
    'Surrogate','on');

imp = predictorImportance(Mdl);

figure;
bar(imp);
