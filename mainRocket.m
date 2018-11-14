%This script will call two functions R_motion and R_motionplot
%Martin Yang Feb 6, 2017

HVRocket = @R_motion;
PlotRocket = @R_motionplot;


time = input('Please enter the time at which you request the speed and height of the rocket');

HVRocket(time);
PlotRocket();