clc;
clear all;
D = input("Enter the distance between the two conductors (in meters):");
r = input("Enter the value of the conductor radius (in meters):");
%Capacitance of the line C = Farad/meter
C = [pi*8.854*10^(-12)/log(D/r)]