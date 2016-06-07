% Get undetermined constants
function C = Get_undeterminedConstants(liftMatrix,rightMatrix)
C = liftMatrix\rightMatrix;
