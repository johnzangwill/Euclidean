% convert finite expansion to recurring decimal
function y=standardPoint(x,ndec)
    d=point2dec(x,ndec);
    y=vpa(d,ndec);
end