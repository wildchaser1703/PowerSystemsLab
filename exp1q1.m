% A single phase line has two parallel conductors 2 metres apart. The diameter of each
% conductor is 1·2 cm. Calculate the loop inductance per km of the line.

clc;
clear all;
d = input("Enter the distance between the two conductors (in meters):");
d = d*100;
D = input("Enter the diameter of conductor (in centimeters): ");
%Radius of the Diameter
r = D/2;
%Loop inductance per metre (in H) of the line
L1 = 10 ^ (-7) * (1+4*log(d/r));
%Loop inductance per km of the line (in mH)
L = L1 * 10 ^ (6);
fprintf("Loop inductance per km of the line is %.4f mH\n",L);