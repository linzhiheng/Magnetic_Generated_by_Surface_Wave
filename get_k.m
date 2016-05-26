%get wave number 'k'
function k = get_k(w,D)
y = @(x) 9.8*x*tanh(x*D)-w;
k = fsolve(y,0);