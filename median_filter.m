im=imread('SANJ.jpg');
b=1/9*(ones(3,3));
figure;imshow(im); %original image
k=imfilter(im,b); %blure image
figure;imshow(k);
t=im+(im-k);    %sharpen image
figure;imshow(t);
z=im-k;   %edge with high frequency
figure;imshow(z);