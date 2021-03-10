clc;
clear all;
GMD = input("Enter the distance between the two conductors (in meters): ")
d = input("Enter the value of conductor diameter(in meters): ");
r = (d/2);
%Loop inductance per meter length of the line = L1 
L1 = 10 ^(-7)*[1+4*log(GMD/r)];
%Loop inductance per km of the line = L
L = L1*1000;