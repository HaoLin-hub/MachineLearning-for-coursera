function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
error = inf;
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
testvalue =[0.01;0.03;0.1;0.3;1;3;10;30];
for i = 1:length(testvalue)
    for j = 1:length(testvalue)
        c_temp = testvalue(i);
        sigma_temp = testvalue(j);
        model= svmTrain(X, y, c_temp, @(x1, x2) gaussianKernel(x1, x2, sigma_temp));
        
      predictions=  svmPredict(model, Xval); 
      err_temp= mean(double(predictions ~= yval));% where predictions is a vector 
%containing all the predictions from the SVM, and yval are the true labels
%from the cross validation set

        if err_temp<error
            C = c_temp;
            sigma = sigma_temp;
            error = err_temp;
        end
    end
end







% =========================================================================

end
