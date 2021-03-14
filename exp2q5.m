% A 3-phase, 50 Hz, 66 kV overhead line conductors are placed in a horizontal plane as
% shown in Fig-2. The conductor diameter is 1·25 cm. If the line length is 100 km, calculate (i)
% capacitance per phase, (ii) charging current per phase, assuming complete transposition of the
% line.

clc;
clear all;
D_12 = input("Enter the distance between conductor 1 and 2 (in meters): ");
D_23 = input("Enter the distance between conductor 2 and 3 (in meters): ");
D_31 = D_12+D_23;
d = input("Enter the value of conductor diameter (in centimeters): ");
r = d/2;
f = input("Enter the frequency (in Hertz): ");
v = input("Enter the line voltage (in KV): ");
Deq = (D_12*D_23*D_31)^(1/3)*100;
%Capacitance of line conductor 
C = (2*pi*8.854*10^(-12))/(log(Deq/r));
%Capacitance of conductor of 100km line
C1 = C*100*1000*10^(6);
fprintf("Line to neutral capacitance for 100 km line is %.2f uF\n",C1);
Ic = (v*1000*2*pi*f*C1*10^(-6))/(3^(1/2));
fprintf("Charging current per phase is %.f Ampere\n",Ic);
