%This script is intended to find the roots of the Legendre and Chebyshev
%polynomials
%Feb 6, 2017
%Martin Yang
%ENSC 180 Assignment 3

x = -1:0.001:1;
L = (1/48)*((693*x.^6)-(945*x.^4)+(315*x.^2)-15);
C = (32*x.^6)-(48*x.^4)+(18*x.^2)-1;

hold off
Lsolution = zeros(1,6);
hold on
Csolution = zeros(1,6);
plot(x, L)
plot(x, C)
j = 1;
k = 1;
for i = 2:length(x)
   if L(i)*L(i-1) < 0
        Lsolution(j) = x(i);
        j = j+1;
   elseif L(i)== 0
        Lsolution(j) = x(i);
        j = j+1;
   end
   if C(i)*C(i-1) < 0
       Csolution(k) = x(i);
       k = k+1;
   elseif C(i) == 0
       Csolution(k) = x(i);
       k = k+1;
   end
end
disp('The roots of the Legendre polynomial are:')
disp(Lsolution)
disp('The roots of the Chevyshev polynomial are:')
disp(Csolution)


%The roots seem to be symmetrical about the y-axis and equal to the degree
%of the polynomials. All the roots are real and non-imaginary