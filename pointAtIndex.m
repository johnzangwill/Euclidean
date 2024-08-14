function s=pointAtIndex(n)
    a=char(sym(n-1));
    l=length(a);
    b=char(l+2);
    b(1:2)='0.';
    for i=1:l
        b(i+2)=a(1+l-i);
    end
    s=sym(b);
end