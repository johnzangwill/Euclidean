% Inverse of representation for decimals
% x: float >=0 and <=-1
% ndec: number of decimal points in result
% d: int8 array
function d=rhoDinv(x,ndec)
    y=vpa(x,ndec+1);
    d=zeros(1,ndec,'int8');
    if y==1
        d=d+9;
    elseif y~=0
        c=char(y);
        if length(c)<=ndec+2
            c(end)=c(end)-1;
            c=pad(c,ndec+2,'9');
        else
            c=c(1:ndec+2);
        end
        d=int8(c(3:end))-48;
    end
end