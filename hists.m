I=imread('.\images\lena.jpg');
I=rgb2gray(I);
[row, column]=size(I);
h=zeros(1,256);
for i=1:row
    for j=1:column
        a=I(i,j);
        h(a+1)=h(a+1)+1;
    end
end
bar(h);
title('Histogram for Lena Grayscale image');