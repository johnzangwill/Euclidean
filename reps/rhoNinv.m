% Inverse of numeric representation
% p: float of the form 0.9999...9
function n=rhoNinv(p)
    n=floor(log10(1./(1-p)));
end