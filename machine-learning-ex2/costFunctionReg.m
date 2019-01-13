function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
z=sigmoid(X*theta);

%请注意, 代价函数的theta(j)^2求和,j是从1开始的,theta(0)无需正则化,所以我这个方法后半部分(theta'*theta需要减去第一项theta(1)的平方)
J=(-y'*log(z)-(1-y)'*log(1-z))/m+(theta'*theta-(theta(1)^2))*(lambda)/(2*m);

res=(X'*(z-y))/m;
first=res(1);
grad=(X'*(z-y))/m+lambda'*theta/m;
grad(1)=first;
 

% =============================================================

end
