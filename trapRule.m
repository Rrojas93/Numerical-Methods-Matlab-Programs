function Tn = trapRule(f, a, b, n)
%Trapezoidal Rule
h = (b-a)/n;
x = a:h:b;
y = feval(f, x);
Tn = 0;
i = 1;
for k=a:h:b
   if(k==a || k==b)
       Tn = Tn + (1/2)*y(i);
   else
       Tn = Tn + y(i);   
   end
   i = i+1;
end 
Tn = Tn*h;