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

%add the bias to X/a1
X = [ones(m, 1) X];
a1 = X;

%calculate z2 with theta1
z2 = Theta1 * a1';

%calculate a2 with z2
a2 = sigmoid(z2);

%add the bias to a2
a2 = [ones(1,m); a2];

%calculate z3 with theta2
z3 = Theta2 * a2;

%calculate a3 with z3
a3 = sigmoid(z3);q

%take best prediction of all classes and convert to a classification vector
[value,index] = max((a3)', [], 2);

p = index;




% =========================================================================


end
