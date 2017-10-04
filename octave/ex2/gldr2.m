%x = [1, 2.07; 1, 2.37; 1, 2.54];
%y = [0.779; 0.916; 0.905];
x = load('ex2x.dat');
y = load('ex2y.dat');
m = length(y);
x = [ones(m, 1), x];
theta = [0.0;0.0];
theta = [1.0;5.0];
alpha = 0.02;
iterations = 2500;
acc = theta'*x(1,:)';
acc
