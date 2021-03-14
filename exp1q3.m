% Find the inductance per km of a 3-phase transmission line using 1·24 cm diameter conductors
% when these are placed at the corners of an equilateral triangle of each side 2 m. 

clc;
clear all;
D = input("Enter the distance between the two conductors (in meters): ");
D = D*100;
d = input("Enter the value of conductor diameter (in centimeters): ");
r = d/2;
%Loop inductance per km length of the line in mH/km/phase
L = 10^(-1)*(0.5+2*log(D/r));
fprintf("Loop inductance per phase of the line %.4f mH\n",L);