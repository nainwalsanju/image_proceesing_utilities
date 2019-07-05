clc;clear;close all;
l=300;
b=600;
im=uint8(zeros(l,b,3));

for i=1:l
    for j=1:b
        %blue
        if (i-300)-tand(126)*(j-1)<0
            im(i,j,3)=255;
        %yellow
        elseif (i-300)-tand(120)*(j-1)>0 && (i-300)-tand(144)*(j-1)<0
            im(i,j,1:2)=255;
        %red
        elseif (i-300)-tand(144)*(j-1)>0 && (i-300)-tand(162)*(j-1)<0
            im(i,j,1)=200;
        %white
        elseif (i-300)-tand(162)*(j-1)>0 && (i-300)-tand(172)*(j-1)<0
            im(i,j,:)=255;
        %green
        elseif (i-300)-tand(172)*(j-1)>0 
            im(i,j,2)=200;
        end
    end
end

figure;imshow(im);