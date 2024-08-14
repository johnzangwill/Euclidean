N=1000;
clc
x=zeros(1,N);
for n=1:N
    x(floor(1.5+N*decexp(n)))=10;
end
plot(1:N,x,'r')

function s=decexp(n)
    a=sprintf('%d',n-1);
    l=numel(a);
    b=char(l+2);
    b(1:2)='0.';
    for i=1:l
        b(i+2)=a(1+l-i);
    end
    s=sscanf(b,'%f');
end
