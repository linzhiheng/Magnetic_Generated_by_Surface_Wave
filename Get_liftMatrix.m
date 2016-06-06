% get lift matrix
function liftMatrix = Get_liftMatrix(k,B1,B2,D)
liftMatrix = zeros(4,4);
liftMatrix(1,:) = [1,-1,-1,0];
liftMatrix(2,:) = [k,-B1,B1,0];
liftMatrix(3,:) = [0,exp(B1*D),exp(-1*B1*D),exp(-1*B2*D)];
liftMatrix(4,:) = [0,B1*exp(B1*D),-1*B1*exp(-1*B1*D),-1*B2*exp(-1*B2*D)];