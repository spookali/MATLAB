function R_motionplot(~)
time = 0:0.01:100;

height = (2.13.*time.^2)-(0.0013.*time.^4)+(0.000034.*time.^4.751);
speed = (2.13*2.*time)-(0.0013*4.*time.^3)+(0.000034*4.751.*time.^3.751);

hold on
plot(time, height)
xlabel('Time t (s)')
ylabel('Height h (m) & Velocity v (m/s)')
title('Graph of Height vs Time of a rocket')
plot(time, speed)
end