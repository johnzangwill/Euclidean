function p=rational2numericproperty(ndec)
    p=zeros(1,10^ndec,'logical');
    for n=1:10^ndec
        d=index2dec(n);
        ch=char(48+d);

        t=regexp(ch,'^.*(.+)\1$');
        % if ~isempty(t)
        %     ch
        %     n
        % end
        p(n)=~isempty(t);
    end
end



