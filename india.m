clc;clear all;close;
b=500;
l=300;
i=uint8(zeros(l,b,3));
%%saffron strip
i(1:100,:,1)=255;
i(1:100,:,2)=150;
i(1:100,:,3)=70;
%%white strip
i(101:200,:,1:3)=255;
%%green strip
i(201:300,:,1)=0;
i(201:300,:,3)=0;
i(201:300,:,2)=100;
%%blue circle
h=250;
k=150;%%center of circle
r=50; %%radius of circle
for x=190:310
    for y=90:210
        if power((x-h),2)+power((y-k),2) <= power(r,2) && power((x-h),2)+power((y-k),2) > power(r-2,2)
            i(y,x,1:2)=0;
            i(y,x,3)=255;
        end
    end
end

%%chakra

x1=300;
y1=150;
h=250;
k=150;
count=0;
figure;imshow(i);
hold on;
b=0;
while b<=360
    x=r*cos(b*pi/180);
    y=r*sin(b*pi/180);
    plot([x+h,h],[y+k,k],'Color','b','Linewidth',2);
    b=b+15;
end



figure;imshow(i);
