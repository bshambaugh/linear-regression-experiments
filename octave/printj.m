x = load('ex2x.dat');
y = load('ex2y.dat');
m = length(y);
x = [ones(m, 1), x];
J_vals = zeros(100, 100);   % initialize Jvals to 100x100 matrix of 0's
theta0_vals = linspace(-3, 3, 100);
theta1_vals = linspace(-1, 1, 100);
for i = 1:length(theta0_vals)
	  for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
	  J_vals(i,j) = sum((t'*x'-y').^2);
    end
end
