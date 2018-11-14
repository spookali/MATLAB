%This script calls two functions which finds the height under the surface
%of a sphere on a fluid
%Martin Yang

R = @ratioOfHRPP;
H = @height_under_surface;

radius = input('Enter the radius of the sphere: ');
densitySphere = input('Enter the density of the sphere: ');
densityFluid = input('Enter the density of the fluid: ');

height = H(radius, densitySphere/densityFluid);
[heightRatio, densityRatio] = R(radius);

hold off
plot(densityRatio, heightRatio)
xlabel('Ps/Pf')
ylabel('h/r')
title('Graph of h/r vs Ps/Pf')

disp('The sphere depth below the fluid surface is: ')
disp(height)