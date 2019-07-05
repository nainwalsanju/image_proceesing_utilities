clc;clear all;close;
b=1000;
l=600;
i=uint8(zeros(l,b,3));
i(1:l/3,:,1)=200;
i(l/3:2*l/3,:,1:3)=255;
for x=1:l/2
    for y=1:l/2
        if x>y
            i(x,y,2)=150;
            i(x,y,1)=0;
            i(x,y,3)=0;
        end
    end
end
d=l/2;
for x=l/2:l
    for y=1:d
            i(x,y,2)=150;
            i(x,y,1)=0;
            i(x,y,3)=0;
    end
    d=d-1;
end
figure;imshow(i);