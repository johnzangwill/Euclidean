x=linspace(-5,5,1000);
y=sin(x*2*pi);
%y=exp(x*100);

figure
plot(x,y)

figure
p=rhoR(x);
q=rhoR(y);
plot(p,q)

figure

x1=rhoRinv(p);
y1=rhoRinv(q);

plot(x1,y1)