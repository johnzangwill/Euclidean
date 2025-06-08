% convert decimal to reversed index
function n=dec2index(d)
    dr=flip(d);
    n=polyval(dr,10)+1;
end