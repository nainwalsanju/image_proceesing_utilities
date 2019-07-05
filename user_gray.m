i=imread('batman.jpg');
i=col2gray(i);
imshow(i);
function [im]=col2gray(image)
if ndims(image)~=3
    print("Dimensions of input image shouble be 3");
else
     [m,n,k]=size(image);
     im=uint8(zeros(m,n));
     for i=1:m
        for j=1:n
            im(i,j)=0.2989 *image(i,j,1)+0.5870*image(i,j,2)+0.1140*image(i,j,3);
        end
     end
end  
end
    
    