%get wave number 'k'
function k = Get_k(omega,D)
y = @(x) 9.8*x*tanh(x*D)-omega;
opt=optimset('Display','off');
k = fsolve(y,0,opt);