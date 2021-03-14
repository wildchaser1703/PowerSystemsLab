% A 3-phase, 50 Hz, 132 kV overhead line has conductors placed in a horizontal plane 4 m
% apart. Conductor diameter is 2 cm. If the line length is 100 km, calculate the charging current
% per phase assuming complete transposition.

clc;
clear all;
D_12 = input("Enter the distance between conductor 1 and 2 (in meters): ");
D_23 = input("Enter the distance between conductor 2 and 3 (in meters): ");
d = input("Enter the value of conductor diameter (in centimeters): ");
r = d/2;
f = input("Enter the frequency (in Hertz): ");
v = input("Enter the line voltage (in KV): ");
Deq = (D_12*D_23*(D_12+D_23))^(1/3)*100;
%Capacitance of each line conductor 
C = (2*pi*8.854*10^(-12))/(log(Deq/r));
C1 = C*100*1000;
Ic = (v*1000*2*pi*f*C1)/(3^(1/2));
fprintf("Charging current per phase is %f Ampere\n",Ic);