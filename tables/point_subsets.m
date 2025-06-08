% point subsets table
ndec=3;
nresult=500;

desc='{0.5}    ';
p=singleton2numericproperty(.5,ndec);
x=vpa(rhoB(p),nresult);
fprintf('%s %s\n', desc, char(x))

desc='{0.3}    ';
pleft=singleton2numericproperty(.3,ndec);
x=vpa(rhoB(pleft),nresult);
fprintf('%s %s\n', desc, char(x))

desc='{0.7}    ';
pright=singleton2numericproperty(.7,ndec);
x=vpa(rhoB(pright),nresult);
fprintf('%s %s\n', desc, char(x))

desc='(0.3,0.7]';
pint=interval2numericproperty(0.3,0.7,ndec);
x=vpa(rhoB(pint),nresult);
fprintf('%s %s\n', desc, char(x))

desc='[0.3,0.7]';
pclosed=pint | pleft;
x=vpa(rhoB(pclosed),nresult);
fprintf('%s %s\n', desc, char(x))

desc='(0.3,0.7)';
popen=pint & ~pright;
x=vpa(rhoB(popen),nresult);
fprintf('%s %s\n', desc, char(x))

desc='(0.0,0.5]';
phalf=interval2numericproperty(0.0,0.5,ndec);
x=vpa(rhoB(phalf),nresult);
fprintf('%s %s\n', desc, char(x))

desc='Rational   ';
prational=rational2numericproperty(ndec);
x=vpa(rhoB(prational),nresult);
fprintf('%s %s\n', desc, char(x))

desc='Cantor   ';
pcantor=cantor2numericproperty(ndec);
x=vpa(rhoB(pcantor),nresult);
fprintf('%s %s\n', desc, char(x))

desc='R[-π/2,π/2]';
rep_pi=rhoR(pi/2);
rep_mpi=rhoR(-pi/2);
pint=interval2numericproperty(rep_mpi,rep_pi,ndec);
pleft=singleton2numericproperty(rep_mpi,ndec);
pclosed=pint | pleft;
x=vpa(rhoB(pclosed),nresult);
fprintf('%s %s\n', desc, char(x))
