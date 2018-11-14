function height = height_under_surface(radius, densityRatio)

%This function will calculate the height an object will fall to in a fluid
%of particular densities and radius

%Feb 2, 2018
%Martin Yang
%This program finds the height h below the surface of a fluid when given
%the parameters radius r, sphere density rho sub s, and fluid density rho
%sub 0
%
height = 0;
volumeSphere = (4/3)*pi*radius.^3;

h = 0:0.01:2*radius;
massDisplaced = (pi*(3*radius.*h.^2-h.^3))/3;
solution = massDisplaced - densityRatio*volumeSphere;

for i = 2:length(h)
    if solution(i) * solution(i-1) <= 0
        height = h(i);
    end
end

return