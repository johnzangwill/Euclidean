
f=@(p) 0.5+0.5*sin(p*2*sym(pi));
%f=@(p) round(sin(pi*p));
f=@(p) singleton(p);
%f=@(p) p;
%f=@(p) 1;
%f=@(p) single(p<sym(0.5))


ndec=2;
p=sym(linspace(0,1,1+10^ndec));

q=f(p);
clf
hold on
axis([0,1,0,1])
plot(p,q)

xf=rhoF(f,ndec);
vpa(xf,50)
[p,q]=rhoFinv(xf,ndec);
plot(p,q,'o')

function y=singleton(x)
    y=zeros(size(x));
    ndec=floor(log10(length(x)));

    for i=1:ndec
        r=restrict(0.5,i);
        y=y+double(x==r);
    end
end