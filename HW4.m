% Praful Sigdel
% Linear Control Theory HW #4

%% B-6-1
num = [0 1 1];
den = [1 0 0];
rlocus(num, den);
title('Root locus Plot of G(s) = K(s+1) / s^2');
%% B-6-3
num = [0 0 1];
den = conv([1 1 0],[1 4 5]);
rlocus(num, den);
title('Root locus Plot of G(s) = K/s(s+1)(s^2+4s+5)');
%% B-6-5
num = [0 0 1];
den = conv([1 2 2],[1 2 5]);
rlocus(num, den);
title('Root locus Plot of G(s) = K/(s^2+2s+2)(s^2+2s+5)');
%% B-6-9
num = [0 0 1 9];
den = [1 4 11 0];
G = tf(num, den);
rlocus(num, den);
[k,poles] = rlocfind(G);
title('Root locus plot of G(s) = K(s+9)/(s(s^2+4s+11))');
%% B-7-8 part a root locus
num = [0 2 8];
den  = [1 4 8];
rlocus(num, den); % root locus of the design 
%% B-7-8 part b step input response 
num1 = [0 0 1]; 
den1 = [1 2 0];
num = [0 2 8];
den  = [1 4 8];
step(num1, den1);
hold on
step(num, den);
v = [0 5 0 5]; axis(v)
title('Step response of closed loop and open loop controller system.');
hold off
%% B-7-13
num = [0 0 0 500 1159 110.9];
den = [1 34.118 200.049 272.734 2.2176 0];
rlocus(num, den);
%% B-7-13 part b step response for closed loop
num = [0 0 0 500 1159 110.9];
den = [1 34.118 200.049 772.734 1161.2176 110.9];
step(num, den);
grid;
title('Unit step response for compensated system.');

