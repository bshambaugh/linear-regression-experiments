x = load('ex3x.dat');
y = load('ex3y.dat');
m = length(y);
x = [ones(m, 1), x];
theta = zeros(size(x(1,:)))'; % initialize fitting parameters
sigma = std(x);
mu = mean(x);
x(:,2) = (x(:,2) - mu(2))./ sigma(2);
x(:,3) = (x(:,3) - mu(3))./ sigma(3);
alpha = 0.5; %your intial learning rate%
J = zeros(50, 1);

for num_iterations = 1:2500
%    J(num_iterations) = %% Calculate your cost function here %%
     J(num_iterations)=(1.0/(2.0*m))*(x*theta-y)'*(x*theta-y);
%    theta = %% Result of gradient descent update %%
    theta = theta - (alpha / m)*((theta'*x'-y')*(x))';
end

% now plot J
% technically, the first J start at the zero-eth iteration
% but Matlab/Octave doesn't have a zero index

figure;
plot(0:49, J(1:50), '-')
xlabel('Number of iterations')
ylabel('Cost J')

