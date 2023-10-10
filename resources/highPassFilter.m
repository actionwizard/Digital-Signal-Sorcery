% sampling rate
fs = 2000;
% defining digital signal range 
theta=linspace(0,pi,fs);
% finding magnitude
m=abs(0.5*(1-cos(theta)+j*sin(theta)));
% plotting frequency response
figure(1)
plot(theta,m)
title('Frequency response')
xlabel('Digital frequency','FontWeight','bold','Color','b')
ylabel('Amplitude','FontWeight','bold','Color','b')
%matlab in-built fn for transfer fn
sys=tf([1 -1],[1 0],0.0005);
% angles & x-y values for plotting a unit circle
angle=[0:2*pi/100:2*pi];
xp=cos(angle);
yp=sin(angle);
% plotting pole-zero plot along with a unit circle
figure(2)
hold on
pzplot(sys)
plot(xp,yp)
xlim([-1.25 1.25])
ylim([-1 1]) 
title('Pole-zero plot')
xlabel('Real axis','FontWeight','bold','Color','b')
ylabel('Imaginary axis','FontWeight','bold','Color','b')
