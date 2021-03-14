% A 3-phase overhead transmission line has its conductors arranged at the corners of an
% equilateral triangle of 2 m side. Calculate the capacitance of each line conductor per km.
% Given that diameter of each conductor is 1·25 cm.

clc;
clear all;
D = input("Enter the distance between the two conductors (in meters): ");
%Convert meter to centimeter
D = D*100;
d = input("Enter the value of conductor diameter (in centimeters): ");
R = d/2;
%Capacitance of each line conductor 
C1 = (2*pi*8.854*10^(-12))/(log(D/R));
C = C1*10^(9);
fprintf("Loop capacitance per km of the line is %f mF\n",C);