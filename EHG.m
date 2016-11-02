%This Function predicts a Term or Preterm Record using EHG Signals

function [] = EHG()

close all
clear all
clc

for i = 1:300
    
    x = load(['C:\Users\Muhaamad Zuhaib\Desktop\TPEHG Database\tpehg (',num2str(i),').mat']);

%     plot(x.val)

%     Sampling Frequency and No. of Samples
    Fs = 20;
    n = length(x.val);

%     RMS Value
    RMS_value(i) = RMS(x, n);

%     Peak Frequency
    Peak_Freq(i) = Peak_Frequency(x, Fs, n);
    
%     Median Frequency
    Median_Freq(i) = Median_Frequency(x, Fs, n);
   
%     Sample Entropy
%      Samp_En(i) = Sample_Entropy(3, 0.15, x.val, 1, n);
%      Samp_En(i) = PN_sampenc(x.val, 3, 0.15, 1);

%     Other Linear Features
    [Mean_value(i), Var_value(i), STD_value(i), PPSD_value(i)] = Linear_Features(x.val);

end
%Features Matrix
Features_Matrix = Features(RMS_value, Peak_Freq, Median_Freq, Mean_value, Var_value, STD_value, PPSD_value);

% Test Sample
sample = Features_Matrix(299,:);

% TPEHG SVM
class = TPEHG_SVM(Features_Matrix, sample);
