function [x, y, z] = Newton(fun, funpr, x1, tol, kmax)
%Newton Method to finding roots%
x(1) = x1;
y(1) = feval(fun, x(1));
ypr(1) = feval(funpr, x(1));
for k = 2: kmax
    x(k) = x(k-1)-y(k-1)/ypr(k-1);
    y(k) = feval(fun, x(k));
    z(k) = x(k) - x(k-1);
    if abs(z(k)) < tol 
        disp('Newton method has converged'); break;
    end
    ypr(k) = feval(funpr, x(k));
    iter = k;
end
if(iter>=kmax)
    disp('zero not found to desired tolerance');
end
disp('           k                  x(k)                 y(k)            x(k)-x(k-1)')
n = length(x);
out=[1, x(1), y(1)]; disp(out)
for k=2:n
    out=[k,x(k), y(k), z(k)];disp(out)
end
    