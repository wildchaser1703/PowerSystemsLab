% Two conductors of a single phase line, each of 1 cm diameters, are arranged in a vertical
% plane with one conductor mounted 1 m above the other. A second identical line is mounted at
% the same height as the first and spaced horizontally 0·25 m apart from it. The two upper and
% the two lower conductors are connected in parallel. Determine the inductance per km of the
% resulting double circuit line.
clc;
clear all;
v = input("Enter the vertical spacing between the two conductors (in centimeters): ");
h = input("Enter the horizontal spacing between the two conductors (in centimeters): ");
d = input("Enter the value of conductor diameter (in centimeters): ");
r = d/2;
GMR = r * exp(-1/4);
selfGMD = (GMR*v)^(1/2);
mutualGMD = (h*h*(h^2+v^2))^(1/4);
%Loop inductance per km of the line
L = 4*10^(-1)*(log(mutualGMD/selfGMD));
fprintf("Loop inductance per km of the line is %.2f mH\n",L);