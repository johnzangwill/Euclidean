function x=rhoR(t)
    s=sign(t);
    s(s==0)=1;
    t=abs(t);
    n=floor(t);
    q=t-n;
    x=(1+s.*(rhoN(n)+q.*(rhoN(n+1)-rhoN(n))))./2;
end