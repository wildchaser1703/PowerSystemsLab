% Calculate the capacitance of a 100 km long 3-phase, 50 Hz overhead transmission line
% consisting of 3 conductors, each of diameter 2 cm and spaced 2·5 m at the corners of an
% equilateral triangle.

clc;
clear all;
d = input("Enter the value of conductor diameter (in centimeters): ");
r = d/2;
D = input("Enter the distance between the two conductors (in meters): ");
%Convert meter to centimeter
D = D*100;
%Capacitance of each line conductor 
C1 = (2*pi*8.854*10^(-12))/(log(D/r));
C = C1*100*10^(9);
fprintf("Loop capacitance per km of the line is %.4f uF\n",C);