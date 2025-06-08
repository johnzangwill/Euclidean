function d=point2dec(x,ndec)
    y=vpa(x,ndec+1);
    if y==1
        d=pad('',ndec,'9');
    elseif y==0
        d=pad('',ndec,'0');
    else
        c=char(y);
        if length(c)<=ndec+2
            c(end)=c(end)-1;
            c=pad(c,ndec+2,'9');
        else
            c=c(1:ndec+2);
        end
        d=c(3:end);
    end
end