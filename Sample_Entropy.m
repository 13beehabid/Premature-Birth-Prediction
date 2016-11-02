%This Function calculates the Sample Entopy of a signal

function Samp_En = Sample_Entropy(dim, r, x, tau, n)

if nargin < 4, tau = 1; end
if tau > 1, x = downsample(x, tau); end

correl = zeros(1,2);
dataMat = zeros(dim+1,n-dim);
for i = 1:dim+1
    dataMat(i,:) = x(i:n-dim+i-1);
end

for m = dim:dim+1
    count = zeros(1,n-dim);
    tempMat = dataMat(1:m,:);
    
    for i = 1:n-m
        % calculate Chebyshev distance, excluding self-matching case
        dist = max(abs(tempMat(:,i+1:n-dim) - repmat(tempMat(:,i),1,n-dim-i)));
        
        % calculate Heaviside function of the distance
        % User can change it to any other function
        % for modified sample entropy (mSampEn) calculation
        D = (dist < r);
        
        count(i) = sum(D)/(n-dim);
    end
    
    correl(m-dim+1) = sum(count)/(n-dim);
end

Samp_En = log(correl(1)/correl(2));
end