% test rhoB

ndec=10;
p=[1,0,1,0,1,1,1,0,1]
x=rhoB(p)
q=rhoBinv(x, ndec)

r=rhoBinv(.1, ndec)