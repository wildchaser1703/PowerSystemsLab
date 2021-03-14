% A single phase transmission line has two parallel conductors 3 m apart, the radius of each
% conductor being 1 cm. Calculate the loop inductance per km length of the line if the material
% of the conductor is (i) copper (ii) steel with relative permeability of 100.
clc;
clear all;
D = input("Enter the distance between two conductors (in meters): ");
D = D*100;
r = input("Enter the value of conductor radius (in centimeters):");
u = input("Enter the value of permeability of steel: ");
%Loop inductance per km length of line for copper in mH/km
L_Cu = 10^(-1)*(1+4*log(D/r));
fprintf("Loop inductance per kilometer of the line for copper is %.4f mH\n",L_Cu);
%Loop inductance per km length of line for steel in mH/km
L_st = 10^(-1)*(u+4*log(D/r));
fprintf("Loop inductance per kilometer of the line for steel is %.4f mH\n",L_st);