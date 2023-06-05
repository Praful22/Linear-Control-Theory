%% B-8_28
num = [0 0 0 20 20];
den = conv([1 2 10 0],[1 5]);
axis_l = logspace(-1, 2, 100);
sys=tf(num,den);
bode(num, den, axis_l);
grid
[Gm, pm] = margin(sys);
Gmdb = 20*log10(Gm);
[Gmdb, pm]