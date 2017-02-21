function [ cn,phin,wn,gn,kn,grgn ] = train( c,phi,w,g,k,x,yp,yd,grg)
[y,r] = predict(c,phi,w,g,k,x,yp);

kn=k-(0.01)*(yd-y)*y/k;

s=w*x + g*yp;

cn=c-(0.01)*y*(yd-y)*(-1/phi*phi)*(s-c);

wn=w-(0.01)*y*(yd-y)*(-1/phi*phi)*(s-c)*x;

grgn=y*(-1/phi*phi)*(s-c)*(yp + g*grg);

gn=g-(0.01)*(yd-y)*grgn;

phin=phi-(0.01)*(yd-y)*y*(1/phi*phi*phi)*(s-c)*(s-c);

end

