function p=rhoR(r)
    s=sign(r);
    s(s==0)=1;
    r=abs(r);
    n=floor(r);
    q=r-n;
    p=(1+s.*(rhoN(n)+q.*(rhoN(n+1)-rhoN(n))))./2;
end