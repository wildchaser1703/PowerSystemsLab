% A single-phase transmission line has two parallel conductors 3 metres apart, radius of each
% conductor being 1 cm. Calculate the capacitance of the line per km. Given that ?0 =8·854 ×
% 10?12 F/m.

clc;
clear all;
D = input("Enter the distance between the two conductors (in meters): ");
D = D*100;
d = input("Enter the value of conductor diameter (in centimeters): ");
R = d/2;
%Capacitances of the line
C1 = (pi*8.854*10^(-12))/(log(D/R));
C = C1*1000*10^(6);
fprintf("Loop capacitance per km of the line is %f mF\n",C);