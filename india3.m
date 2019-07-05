clc;clear;close all;
b=500;
l=300;
r=50; %%radius of circle
i=uint8(zeros(l,b,3));
%%saffron strip
i(1:l/3,:,1)=255;
i(1:l/3,:,2)=150;
i(1:l/3,:,3)=70;
%%white strip
i(l/3:2*l/3,:,1:3)=255;
%%green strip
i(2*l/3:l,:,1)=0;
i(2*l/3:l,:,3)=0;
i(2*l/3:l,:,2)=100;
%%blue circle
[k,h,q]=size(i);
h=h/2;
k=k/2;%%center of circle

for x=h-r:h+r
    for y=k-r:k+r
        if power((x-h),2)+power((y-k),2) <= power(r,2) && power((x-h),2)+power((y-k),2) > power(r-2,2)
            i(y,x,1:2)=0;
            i(y,x,3)=255;
        end
    end
end

%%chakra
b=15;
for z=0:11
    for m=h-r:h+r
        for n=k-r:k+r
            if tand(z*b) ~= Inf   
                if  (n-k)-(m-h)*tand(z*b)>0 && (n-k)-(m-h)*tand(z*b)<=2   && power((m-h),2)+power((n-k),2) <= power(r,2)
                    i(n:n+2,m:m+2,1:2)=0;
                end
            else
               i(k-r:k+r,h-1:h+1,1:2)=0; 
            end
        end
    end
end


figure('name','indian_flag');imshow(i)