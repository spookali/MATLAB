function [heightRadiusRatio, densityRatio] = ratioOfHRPP(radius)
%This function determines the ratio between the height h and radius r
%versus the densities of the sphere and fluid.


densityRatio = 0:0.01:1;
height = zeros(1,length(densityRatio));
for i = 1:length(densityRatio)
    height(i) = height_under_surface(radius, densityRatio(i));
end
heightRadiusRatio = height/radius;
return
end