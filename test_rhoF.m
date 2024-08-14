
f=@(p) 0.5+0.5*sin(p*2*sym(pi));
f=@(p) round(sin(pi*p));
f=@(p) singleton(p);
%f=@(p) p;
%f=@(p) 1;


ndec=300;
p=linspace(0,1,1000);
q=f(p);
clf
hold on
axis([0,1,0,1])
plot(p,q)


xf=rhoF(f,ndec)
vpa(xf,50)
[p,q]=rhoFinv(xf,ndec);
plot(p,q,'o')

function q=singleton(p)
    q=zeros(size(p));
    z=p<=sym(0.5);
    q(z)=1./(sym(1.5)-p(z));
end