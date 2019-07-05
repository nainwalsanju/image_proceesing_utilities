clear; close all;clc;
im=logical(zeros(800,800));
im(200:600,200:600)=1;
b=logical(zeros(100,100));
for i=1:100
  for j=1:100
    if sqrt(power(i-50,2)+power(j-50,2))<=50
      b(i,j)=1;
    end
  end
end

k=imdilate(im,b);
figure('name','original image');imshow(im);
figure('name','dilated image');imshow(k);
t=imerode(im,b);
figure('name','eroded image');imshow(t);