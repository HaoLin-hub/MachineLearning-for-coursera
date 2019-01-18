function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%往X的矩阵中增加第一列的列向量1
X = [ones(m, 1) X];
%计算第二层的激活单元,XX的每一行向量就代表了一个实例的的所有激活单元
XX = sigmoid(X*Theta1');
%往XX矩阵中增加第一列的列向量1,并且计算第三层的激活单元
pp = sigmoid([ones(size(XX, 1), 1) XX] * Theta2');
%获得每一行中最大的概率所对应的索引(即label)
[maxium,index] = max(pp, [], 2);
p=index;







% =========================================================================


end
