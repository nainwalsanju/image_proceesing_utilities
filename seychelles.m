%clc;clear;close all;
l=200;
b=2*l;
i=uint8(zeros(l,b,3));
%BLUE
d=b/3;
for x=1:l
    for y=1:d
            i(x,y,3)=200;
    end
    d=d-(b/(3*l));
end
%figure;imshow(i);
%YEllow
d=2*b/3;
for x=1:l
    for y=1:d
        if i(x,y,3) ~= 200
            i(x,y,1:2)=255;
        end     
    end
    d=d-2*(b/(3*l));
end
%figure;imshow(i);
%red
d=3*b/3;
for x=1:l
    for y=1:d
        if i(x,y,3) ~= 200 && i(x,y,1)~=255 && i(x,y,2)~=255
            i(x,y,1)=200;
        end
    end
    d=d-3*(b/(3*l));
end
%figure;imshow(i);
%red
d=l;
for y=1:b
    for x=1:d
        if i(x,y,3) ~= 200 && i(x,y,1)~=255 && i(x,y,2)~=255
            i(x,y,1)=200;
        end
    end
    d=d-2*(l/(3*b));
end
%figure;imshow(i)
%white
d=l;
for y=1:b
    for x=1:d
        if i(x,y,3) ~= 200 && i(x,y,1)~=255 && i(x,y,2)~=255 && i(x,y,1)~=200
            i(x,y,1:3)=255;
        end
    end
    d=d-(l/(3*b));
end
%figure;imshow(i);
%green
for y=1:b
    for x=1:l
        if i(x,y,3) ~= 200 && i(x,y,1)~=255 && i(x,y,2)~=255 && i(x,y,1)~=200 && i(x,y,3)~=255
            i(x,y,2)=158;
        end
    end
end
figure;imshow(i);