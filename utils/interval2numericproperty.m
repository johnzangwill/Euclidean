% numeric property associated with the interval (a,b]
% a: float >=0 and <=1
% b: float >=a and <=1
% ndec: number of decimal places of a and b to consider
function p=interval2numericproperty(a,b,ndec)
    p=zeros(1,10^ndec,'logical');
    for i=1:10^ndec
        x=index2point(i);
        if a < x && x < b
            p(i)=true;
        end
    end
end