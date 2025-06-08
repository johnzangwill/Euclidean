% Representation for numeric properties
% p: boolean array
function x=rhoB(p)
    n=length(p);
    x=sym(0);
    for i=1:n
        if p(i)
            x=x+9*sym(10)^-i;
        end
    end
end

