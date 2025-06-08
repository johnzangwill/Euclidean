% Representation for point sequences
% a: array of floats between 0 and 1
function p=rhoS2(a)
  ndec=length(a);

  resultLength=ndec*(ndec-1)/2+ndec;
 
  d=zeros(1,resultLength,'int8');

  for m=1:ndec
    dxm=rhoDinv(a(m),ndec);
    for n=1:ndec-m+1
      k=(m+n-2)*(m+n-1)/2+m;
      d(k)=dxm(n);
    end
  end
    
  p=rhoD(d);
end