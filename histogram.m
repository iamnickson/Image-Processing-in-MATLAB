function h=histogram(I)
if(length(size(I))==3)
    I=rgb2gray(I);
end
[row, column]=size(I);
h=zeros(1,256);
for i=1:row
    for j=1:column
        a=I(i,j);
        h(a+1)=h(a+1)+1;
    end
end
title('Histogram for Lena Grayscale image');