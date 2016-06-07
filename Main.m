% Main
close all
clear all
clc
% known constant
gravity = 9.8;
Depth = 100;
amplitude = 1;
angularFrequency = 0.6;

permeability = 1.2566*10^-6;
waterConductivity = 5;
floorConductivity = 1;

earthField = 0.5;
dipEarthField = 70;
inclinationEarthField = 0;
Fx = earthField*cos(dipEarthField)*cos(inclinationEarthField);
Fz = earthField*sin(dipEarthField);

% Get undetermined constants
k = Get_k(angularFrequency, Depth);
B1 = Get_B(k,waterConductivity,permeability,angularFrequency);
B2 = Get_B(k,floorConductivity,permeability,angularFrequency);
liftMatrix = Get_liftMatrix(k,B1,B2,Depth);
rightMatrix = Get_rightMatrix(amplitude,gravity,angularFrequency,k,Depth,Fx,Fz);
C = Get_undeterminedConstants(liftMatrix,rightMatrix);

% Get vertical magnetic form
A = (amplitude*gravity/angularFrequency)/cosh(k*Depth);
hz1 = @(z) C(1)*exp(k*z);
hz2 = @(z) C(2)*exp(B1*z) + C(3)*exp(-B1*z) + A*( i*sinh(k*(Depth-z))*Fx + cosh(k*(Depth-z))*Fz);
hz3 = @(z) C(4)*exp(-B2*z);

% Plot hz
Plot_hz(hz1,hz2,hz3,Depth)