%This Function calculates the RMS Value of a signal

function [RMS_value] = RMS(x, n)

% Square Values of all Samples of the Signal
square_samples = x.val.^2;

% Sum of Squared Values of the Samples of the Signal
sum_square_samples = sum(square_samples);

% Mean Value of the Sum of Squared Values of the Samples of the Signal
mean_sum_square_samples = (sum_square_samples)/n;

% RMS Value
RMS_value = sqrt(mean_sum_square_samples);