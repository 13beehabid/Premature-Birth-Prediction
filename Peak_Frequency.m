%This Function calculates the Peak Frequency of a signal

function [Peak_Freq] = Peak_Frequency(x, Fs, n)

% Fast Discrete Fourier Transform  
Ycn = abs(fft(x.val)/n);
     
if mod(n,2)==0  % n is even
    Y = [ Ycn(1) 2*Ycn(2:n/2) Ycn(n/2+1)];
    freq = (Fs/n)*linspace(0,n/2,n/2+1);
     
else  % n is odd
    Y = [ Ycn(1) 2*Ycn(2:(n-1)/2)];
    freq = (Fs/n)*linspace(0,(n-2)/2,(n-1)/2);
end
     
% Exclude DC Coponents
[~, index] = max(Y(2:end));
     
% Peak Frequency
Peak_Freq = freq(index);