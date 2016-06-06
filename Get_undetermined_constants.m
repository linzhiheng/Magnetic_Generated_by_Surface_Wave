% Get undetermined constants
clear all
clc
% known constant
gravity = 9.8;
Depth = 50;
amplitude = 1;
angularFrequency = 0.06;

permeability = 1.2566*10^-6;
waterConductivity = 5;
floorConductivity = 1;

earthField = 0.5;
dipEarthField = 70;
inclinationEarthField = 0;

Fx = earthField*cos(dipEarthField)*cos(inclinationEarthField);
Fz = earthField*sin(dipEarthField);

% get martix
k = Get_k(angularFrequency, Depth)
B1 = Get_B(k,waterConductivity,permeability,angularFrequency)
B2 = Get_B(k,floorConductivity,permeability,angularFrequency)
liftMatrix = Get_liftMatrix(k,B1,B2,Depth);
rightMatrix = Get_rightMatrix(amplitude,gravity,angularFrequency,k,Depth,Fx,Fz);

% get answer
C = liftMatrix\rightMatrix
