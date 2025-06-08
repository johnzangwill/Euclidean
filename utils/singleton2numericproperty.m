% The numeric property that generates a singlton {a} at point a
% a: float >=0 and <=1
% ndec: number of decimal points of a to consider
function p=singleton2numericproperty(a,ndec)
    p=zeros(1,10^ndec,'logical');
    for i=2:ndec
        d=rhoDinv(a,i);
        n=dec2index(d);
        p(n)=true;
    end
end