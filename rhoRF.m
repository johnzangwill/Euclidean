function q=rhoRF(rf,ndec)
    f=@(p) limit_domain(rf,p);
    q=rhoF(f,ndec);
end

function q=limit_domain(rf,p)
    if p==0.0 || p==1.0
        q=0;
    else
        q=rhoR(rf(rhoRinv(p)));
    end
end