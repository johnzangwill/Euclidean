% Representation for number sequences
% k: array of ingegers >= 0
function p=rhoK(k)
  n=length(k);
    
  a=sym(zeros(1,length(k)));
  for i=1:length(k)
    a(i)=rhoN(k(i));
  end
  p=rhoS(a);

end