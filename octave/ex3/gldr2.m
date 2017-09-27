x = load('ex2x.dat');
y = load('ex2y.dat');
m = length(y);
x = [ones(m, 1), x];
theta = (zeros(1,columns(x)))';
alpha = 0.02;
iterations = 2500;
for k=1:iterations,
   acc = ((theta'*x'-y')*(x))';
   theta = theta - (alpha / m)*acc;
end
