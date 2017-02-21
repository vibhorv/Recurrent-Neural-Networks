[ x,y,u ] = input_gen(1000);
c=rand(1);
w=rand(1);
g=rand(1);
phi=rand(1);
k=rand(1);


for j=1:1000
    error=0;
    yp=0;
    grg=0;
for a=1:1000
    [c,phi,w,g,k,grgn] = train( c,phi,w,g,k,x(a),yp,y(a),grg);
    [yt,r] = predict(c,phi,w,g,k,x(a),yp);
    yp=yt;
end
    yp=0;
    for a=1:1000
    [yt,r] = predict(c,phi,w,g,k,x(a),yp);
    error=error+ (0.5)*(y(a)-yt)*(y(a)-yt);
    yp=yt;
    end
    err(j)=error;
end

plot(err)
error