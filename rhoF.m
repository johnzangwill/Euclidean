function q=rhoF(f,ndec)
    e=1/sym(10)^ndec;
    a=sym(zeros(1,ndec));

    for i=1:ndec
        x=pointAtIndex(i);
        y=f(sym(x));

        if single(y>0) && length(char(vpa(y)))<ndec+2
            y=y-e;
        end

        a(i)=y;
    end
    
    q=rhoS(a);
end