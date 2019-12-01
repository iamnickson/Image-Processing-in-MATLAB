function I=brightness(I,c)
if(length(size(I))==3)
    I=rgb2gray(I);
end
[M,N]=size(I);
for i=1:M
    for j=1:N
        a=I(i,j);
        a=a+c;
        if(a>255)
            a=255;
        elseif(a<0)
            a=0;
        end
        I(i,j)=a;
    end
end