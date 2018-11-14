function R_motion(time) 
%This function receives the input, a time value, and returns the height and
%speed of a rocket with set parameters.
%Martin Yang Feb 5, 2017


height = (2.13.*time.^2)-(0.0013.*time.^4)+(0.000034.*time.^4.751);
speed = (2.13*2.*time)-(0.0013*4.*time.^3)+(0.000034*4.751.*time.^3.751);

disp('The height of the rocket at the given time is:')
disp(height)
disp('The speed of the rocket at the given time is:')
disp(speed)
end
