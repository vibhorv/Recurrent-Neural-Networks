function [y,r] = predict(c,phi,w,g,k,x,yp)
s=w*x + g*yp;
size(s);
r=(s-c)*(s-c)/2*phi*phi;
y=k*exp(-r);
end

