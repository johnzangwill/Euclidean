function [x,y]=rhoFinv(p,ndec)
    a=rhoSinv(p,ndec);

    x=zeros(1,ndec);
    y=zeros(1,ndec);

    for i=1:ndec
        x(i)=pointAtIndex(i);
        y(i)=a(i);
    end
end