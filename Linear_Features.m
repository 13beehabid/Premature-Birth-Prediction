%This Function calculates the Mean, Variance, Standard Deviation
% and Peak Power Spectral Density of a signal

function [Mean_value, Var_value, STD_value, PPSD_value] = Linear_Features(signal)

% Mean Value
Mean_value = mean(signal);

% Variance Value
Var_value = var(signal);

% Standard Deviation
STD_value = std(signal);

% Power Spectral Density
psd = (signal).^2;

% Peak Power pectral Density
PPSD_value = max(psd);

end