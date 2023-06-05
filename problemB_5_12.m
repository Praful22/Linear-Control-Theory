% Unit step response.%
num = 10;
den = [1 2 10];
t = 0:0.1:8;
step(num,den)
hold on
grid 
title('Response of G(s)=10/(s^2+2s+10)')
% Unit impulse response.%
impulse(num,den)
% Unit ramp response. %
r=t;
y=lsim(num,den,r,t);
plot(t,r,'-',t,y,'o');
legend("Unit ramp response","Unit step Response","Unit impulse response")