%This Function differentiates between Term and Preterm Record using SVM

function [class] = TPEHG_SVM(Features_Matrix, sample)

% Results Matrix for Training
results_matrix = [1; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 1; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 1; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 1; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 1; 0; 1; 0; 0; 0; 0; 0; 0; 0; 1; 0];

% Training Matrix
training_matrix = zeros(210, 7);

for j = 1 : 16
    training_matrix(j,:) = Features_Matrix(j,:);
end

% SVM
svmtrn = svmtrain(training_matrix, results_matrix);
class = svmclassify(svmtrn,sample)

if (class == 0)
    disp('The Sample is a Term Record');
    
else
    disp('The Sample is a Preterm Record');
end