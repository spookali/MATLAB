prompt1 = 'Please enter the drag force: ';
prompt2 = 'Please enter the air velocity: ';
prompt3 = 'Please enter the surface area: ';
prompt4 = 'Please enter the air density: ';
dragForce = input(prompt1);
airVel = input(prompt2);
surfaceArea = input(prompt3);
airDensity = input(prompt4);
dragCoeff = airDensity*airVel*airVel*surfaceArea/(2*dragForce);
disp('The drag coefficient is')
disp(dragCoeff)
x = length(300);
dragCoeff2 = length(300);
for i = 1:300
    x(i) = i;
    dragCoeff2(i) = airDensity*i*i*surfaceArea/(2*dragForce);


end
    plot(x, dragCoeff2)
    xlabel('Velocity')
    ylabel('Drag Coefficient')
    title('Graph of drag coefficient vs. velocity')