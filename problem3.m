xval = input('Enter X Values in a bracket []: ');
yval = input('Enter Y Values in a bracket []: ');
xtrans = transpose(xval);
ytrans = transpose(yval);

point = ([xtrans,ytrans]) ;
 
for n = 1:length(point)-1
P = polyfit(point(:,1), point(:, 2), n);
F = polyval(P, point(:,1));
e = norm(point(:,2) - F);
x = [n,e];
if n==1
    y = x;
end
if y(2)>= x(2)
    z=x(1);
end
p = polyfit(point(:,1),point(:,2), z);

fprintf ('\r The Coefficients are: %0.4f\n', p)
end


