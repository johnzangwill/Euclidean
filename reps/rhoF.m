function q=rhoF(f,ndec)
    e=1/sym(10)^ndec;
    a=sym(zeros(1,ndec));

    x=zeros(1,10^ndec);
    for i=1:10^ndec
        x(i)=pointAtIndex(i);
    end
    y=f(x);

    for i=1:10^ndec

        if single(y(i)>0) && length(char(vpa(y(i))))<ndec+2
            y(i)=y(i)-e;
        end

        a(i)=y(i);
    end
    q=rhoS(a);
end