close all
a = -1;
z = 0:pi/100:2*pi;
y = a*sin(z);
Nz = length(z);
% Set up your plot environment
figure
h = plot(z(1),y(1));
xlim([z(1) z(end)])
ylim([min(y) max(y)])
xlabel('z')
ylabel('a*sin(z)')
legend('my sine function')
init_getframe = struct('cdata',[],'colormap',[]);
frames = repmat(init_getframe, Nz, 1 );
frames(1) = getframe;
% Get frames
for i = 2:Nz
    set(h,'XData',z(1:i));
    set(h,'YData',y(1:i));
    drawnow
    frames(i) = getframe;
end
% Play movie
movie(frames)