%Root finding with Bisection Method%
function root = bisRoot(f,a,b,max,t)
ya = f(a);
yb = f(b);
if sign(ya) == sign(yb), error('function has same sign at end points'),end
disp('          step                 a                  b                   m                   ym                 bound')
for k = 1:max
    m = (a+b)/2;
    ym = f(m);
    i = k;
    bound = (b-a)/2;
    out = [i, a, b, m, ym, bound ]; disp(out)
    if abs(ym)<t, disp('bisection has converged');
        root = m;
        break;
    end
    if sign(ym) ~= sign(ya)
        b = m;
        yb = ym;
    else
        a = m;
        ya = ym;
    end
    if (i >= max), disp('zero not found to desired tolerance'), end
end
