%x = [1, 2.07; 1, 2.37; 1, 2.54];
%y = [0.779; 0.916; 0.905];
x = load('ex4x.dat');
y = load('ex4y.dat');
m = length(y);
x = [ones(m, 1), x];
theta = (zeros(1,columns(x)))';
%theta = [0.0;0.0];
alpha = 0.02;
iterations = 25;
for k=1:iterations,
   acc = 0.0;
   acc2 = 0.0;
   for j = 1:m,  % This code could be futher optimized? Study Matrix Algebra.
      z = theta'*x(j,:)';
      htheta = 1.0 ./ (1.0 + exp(-z));
      acc = ((htheta-y(j,1))*x(j,:))'+acc;
      acc2 = htheta*(1 - htheta)*x(j,:)'*x(j,:)+acc2; 
   end
   theta = theta - (1 / m)*(1 / m)*inv(acc2)*acc;
end
