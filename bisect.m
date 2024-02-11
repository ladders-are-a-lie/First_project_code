function [xt, k]= bisect(f, xl, xu, Tol, N)
k = 1;
%f = @(x) x+1 Test Value
Fl = f(xl);
Fu= f(xu);
xt = (xl+xu)/2;
Ft=f(xt);
while k < N && Ft ~= 0 && abs((xu-xl)) > Tol
xt = (xu+xl)/2;
Ft = f(xt);
k = k+1;
if ~isequal(sign(Fl), sign(Ft))
xu = xt;
Fu = f(xu);
elseif ~isequal(sign(Fu), sign(Ft))
xl = xt;
Fl = f(xl);
end
end
if k==N
fprintf("ERROR\n");
end
