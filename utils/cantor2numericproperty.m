function p=cantor2numericproperty(ndec)
    p=zeros(1,10^ndec,'logical');
    for n=1:10^ndec
        d=index2dec(n);
        ch=char(48+d);
        t=regexp(ch,'^[90]*8?9*$','ONCE');
        p(n)=~isempty(t);
    end
end



