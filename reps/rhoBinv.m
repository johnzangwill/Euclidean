% Inverse of numeric property representation
% x: float whose decimal expansion is all 0s or 9s
function p=rhoBinv(x, ndec)
    y=vpa(x, ndec);
    c=char(y);
    if y==1
        c=pad('0.',ndec+2,'9');
    elseif y>0 & length(c)<ndec+2 & c(end)=='1'
        c(end)='0';
        c=pad(c,ndec+2,'9');
    end

    d=c(3:min(end,ndec+2));
    d=pad(d,ndec,'0');
    p=(d=='9');
end