clc;clear;close all;
img=imread('landscape.jpg');
figure;imshow(img);
[height,width,colourplane]=size(img);
h=uint8(height/2);
w=uint8(width/2);
img2=uint8(zeros([h,w,colourplane]));
for x=1:height
  if mod(x,2) == 0
    for y=1:width
      if mod(y,2) == 0
        img2(x/2,y/2,1:3)=img(x,y,1:3);
      end
    end
  end
end

[h1,k1]=size(img2);
figure;imshow(img2);
imwrite(img2,'landscape2.jpg');

              

