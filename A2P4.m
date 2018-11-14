t = 0:0.01:100;


Height = (2.13.*t.^2)-(0.0013.*t.^4)+(0.000034.*t.^4.751);
for i = 2:length(t)-1
    if  Height(i)*Height(i+1)<0 %the value of the Height function crosses the x-axis
        ground = t(i);
    end
    if  Height(i) > Height(i-1) && Height(i) > Height(i+1) %point is higher than the others surrounding it
        maxHeight(1) = Height(i);
        maxHeight(2) = t(i);
    end
end
disp('The maximum height reached by the rocket is (in metres)')
disp(maxHeight(1))
disp('The time it takes for the rocket to reach its maximum height is (in seconds)')
disp(floor(maxHeight(2)))
disp('The time it takes for the rocket to hit the ground is (in seconds)')
disp(floor(ground)) %1 second accuracy
plot(t, Height)
xlabel('Time t (s)')
ylabel('Height H (m)')
title('Graph of Height vs. Time')
axis([0 65 -5 1500]);
