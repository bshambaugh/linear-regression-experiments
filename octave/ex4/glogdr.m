% This includes the normalized version for linear regression
% Notice that iterations are not used because gradient descent is not used.
x = load('ex4x.dat');
y = load('ex4y.dat');
m = length(y);
x = [ones(m, 1), x];

% find returns the indices of the
% rows meeting the specified condition
pos = find(y == 1); neg = find(y == 0);

% Assume the features are in the 2nd and 3rd
% columns of x
plot(x(pos, 2), x(pos,3), '+'); 
hold on;
plot(x(neg, 2), x(neg, 3), 'o');
ylabel('Exam 2 Score');
xlabel('Exam 1 Score');
legend('Admitted','Not Admitted');
%theta = (zeros(1,columns(x)))';
%alpha = 0.02;
%iterations = 2500;
%theta = inv(x'*x)*x'*y;

%for k=1:iterations,
 %  acc = ((theta'*x'-y')*(x))';
 %  theta = theta - (alpha / m)*acc;
%end
