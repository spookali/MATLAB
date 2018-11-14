%This script attempts to approximate a periodic function in the form of
%f(x) = -k when -pi < x < 0 and = k when 0 < x < pi
%Feb 7, 2018
%Martin Yang ENSC 180
k = input('Enter the magnitude of the maximum and minimum value of the function');
x = -pi:0.01:pi;
N = input('Enter the upper limit of the summation approximation');

approximation = zeros(1,length(x));


for i = 1:1:length(x)
    approx = 0;
    for n = 1:N
        Bn = (2*k*(1-cos(n*pi)))/(n*pi);
        sum = Bn*sin(n*x(i));
        approx = approx + sum;
    end
    approximation(i) = approx;
end



plot(x, approximation)
xlabel('x')
ylabel('y')
title('Graph of the approximation of a Fourier graph')
