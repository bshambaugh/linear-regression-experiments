theta = zeros(size(x(1,:)))'; % initialize fitting parameters
alpha = %your intial learning rate%
J = zeros(50, 1);

for num_iterations = 1:50
    J(num_iterations) = %% Calculate your cost function here %%
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
