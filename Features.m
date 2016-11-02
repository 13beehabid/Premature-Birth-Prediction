%This Function calculates the Features Matrix of the Dataset

function [Features_Matrix] = Features(RMS_value, Peak_Freq, Median_Freq, Mean_value, Var_value, STD_value, PPSD_value)

% Transpose of Given Features
RMS_value_t = transpose(RMS_value);
Peak_Freq_t = transpose(Peak_Freq);
Median_Freq_t = transpose(Median_Freq);
% Samp_En_t = transpose(Samp_En);

% Transpose of Other Linear Features
Mean_value_t = transpose(Mean_value);
Var_value_t = transpose(Var_value);
STD_value_t = transpose(STD_value);
PPSD_value_t = transpose(PPSD_value);

% Features Matrix
Features_Matrix = [RMS_value_t Peak_Freq_t Median_Freq_t Mean_value_t Var_value_t STD_value_t PPSD_value_t];