function x=rhoRinv(p)
    pos=single(p>=1/2);
    s=2*pos-1;
    a=abs(2*(p-1/2));
    n=rhoNinv(a);
    q=rhoN(n);
    x=s.*(n+(a-rhoN(n))./(rhoN(n+1)-rhoN(n)));
end