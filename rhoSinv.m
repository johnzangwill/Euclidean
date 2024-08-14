function a=rhoSinv(p,ndec)
    resultLength=ndec*(ndec-1)/2+ndec;
    dp=point2dec(p,resultLength);

    for m=1:ndec
        d=blanks(ndec);
        for n=1:ndec-m+1
            k=(m+n-2)*(m+n-1)/2+m;
            d(n)=dp(k);
        end

        b=['0.',d];
        a(m)=vpa(b,ndec);
    end
end