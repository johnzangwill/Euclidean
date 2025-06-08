% test point properties

sp=[0.4, 0.49, 0.499, 0.4999]
ndec=1000
np=zeros(1,ndec,"logical");

for i=1:length(sp)
    na=point2index(sa(i),20);
    pos=na;
    if pos <= ndec
        np(pos)=true;
    end
end

np
rhoB(np)
vpa(ans,ndec)