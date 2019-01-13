function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos = find(y==1); %找到通过学生的序号向量,得到他们的数据
neg = find(y==0); %找到未通过学生的序号向量,得到他们数据
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7); %使用+绘制通过学生
hold on;
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7); %使用o绘制未通过学生







% =========================================================================



hold off;

end
