function d=point2dec(x,ndec)
    d=repmat('0',1,ndec);
    if x~=0
        xtext=char(vpa(x,ndec));
        nchars=length(xtext);
        d(1:nchars-2)=xtext(3:nchars);
    end
end