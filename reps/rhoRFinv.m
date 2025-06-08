function [x,y]=rhoRFinv(p,ndec)
    a=rhoSinv(p,ndec);

    px=zeros(1,ndec);
    py=zeros(1,ndec);

    for i=1:ndec
        px(i)=pointAtIndex(i);
        py(i)=a(i);
    end

    x=rhoRinv(px);
    y=rhoRinv(py);
end