% The three conductors of a 3-phase line are arranged at the corners of a triangle of sides 2 m,
% 2·5 m and 4·5 m. Calculate the inductance per km of the line when the conductors are regularly
% transposed. The diameter of each conductor is 1·24 cm.
clc;
clear all;
D_12 = input("Enter the distance between the conductor 1 and conductor 2 (in meters): ");
D_23 = input("Enter the distance between the conductor 2 and conductor 3 (in meters): ");
D_31 = input("Enter the distance between the conductor 3 and conductor 1 (in meters): ");
d = input("Enter the value of the conductor diameter (in centimeters): ");
r = d/2;
Deq = nthroot((D_12*D_23*D_31),3)*100;
%Loop inductance of three phase conductors in mH/km/phase
L = 10^(-1)*(0.5+2*log(Deq/r));
fprintf("Loop inductance per km per phase of the line is %.4f mH\n",L);