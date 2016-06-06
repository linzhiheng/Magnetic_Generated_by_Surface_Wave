% get right matrix
function rightMatrix = Get_rightMatrix(a,g,omega,k,D,Fx,Fz)
temp1 = a*g/omega;
temp2 = k*D;

rightMatrix = zeros(4,1);
rightMatrix(1) = temp1*(i*tanh(temp2)*Fx + Fz);
rightMatrix(2) = -k*temp1*(i*Fx + tanh(temp2)*Fz);
rightMatrix(3) = -temp1*Fz/cosh(temp2);
rightMatrix(4) = k*temp1*i*Fx/cosh(temp2);