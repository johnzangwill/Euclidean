rf=@(x) 0;
rf=@(x) x;
%rf=@(x) sin(2*pi*x);
rf=@(x) sin(x);
%rf=@(x) exp(x);
%rf=@(x) floor(x)

x=linspace(-10,10,1000);
y=rf(x);
figure
hold on
plot(x,y)

ndec=100;
pf=rhoRF(rf,ndec)
vpa(pf,50)
[x,y]=rhoRFinv(pf,ndec);
plot(x,y,'o')
label=sprintf('%d decimals',ndec);
file=sprintf('plots/rhoRFsin%d',ndec);
legend('sin x', label)
print(file,'-dmeta')