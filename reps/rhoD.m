% Representation for decimals
% d: integer array of numbers >=0 nd <=9
% x: float >=0 and <=-1
function x=rhoD(d)
    n=length(d);
    x=sym(0);
    for i=1:n
        x=x+d(i)*sym(10)^-i;
    end
end

