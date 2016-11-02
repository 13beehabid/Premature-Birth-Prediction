%This Function calculates the Median Frequency of a signal

function [Median_Freq] = Median_Frequency(x, Fs, n)

psdest = psd(spectrum.periodogram,x.val,'Fs',Fs,'NFFT',n);
normcumsumpsd = cumsum(psdest.Data)./sum(psdest.Data);
Ind = find(normcumsumpsd <=0.5,1,'last');

% Median Frequency
Median_Freq = psdest.Frequencies(Ind);