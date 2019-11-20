function H=chistogram(h)
l=length(h);
H=zeros(1,l);
H(1)=h(1);
for k=2:256
    H(k)=H(k-1)+h(k);
end