function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%

%randparm()方法是随机返回1到size(X,1)范围内的整数,即将X的索引随机排列
randidx = randperm(size(X,1));
%取randix的前K个数作为索引从X中取值赋给centroids
centroids = X(randidx(1:K),:);







% =============================================================

end

