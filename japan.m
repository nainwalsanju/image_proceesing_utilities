i=ones(400,700,3);
i=uint8(i);
h=200;
k=350;
r=100;
for x=1:400
    for y=1:700
        if power((x-h),2)+power((y-k),2) == power(r,2)
            i(x,y,1)=255;
            i(x,y,2:3)=0;
        elseif power((x-h),2)+power((y-k),2) < power(r,2)
            i(x,y,1)=255;
            i(x,y,2:3)=0;
        else
            i(x,y,1:3)=255;
        end
    end
end
imshow(i);