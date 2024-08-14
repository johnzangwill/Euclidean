function p=rhoS(a)
    ndec=length(a);

    resultLength=ndec*(ndec-1)/2+ndec;
 
    d=blanks(resultLength);

    for m=1:ndec
        dxm=point2dec(a(m),ndec);
        for n=1:ndec-m+1
            k=(m+n-2)*(m+n-1)/2+m;
            d(k)=dxm(n);
        end
    end
    b=['0.',d];
    p=vpa(b,resultLength);
end