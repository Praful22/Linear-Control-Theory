% Praful Sigdel
% Linear Control Theory HW #7

%% Problem 11-4
A =[-1 0 1;1 -2 0; 0 0 -3];
B =[0; 0; 1];
C =[1 1 0];
D = 0;

[num, den]=ss2tf(A,B,C,D)
%% Problem 11-10
num = [0 10.4 47 160];
den = [1 14 56 160];
[A, B, C, D] = tf2ss(num, den)

%% Problem 11-13

A = [-1 -2 -2; 0 -1 1; 1 0 -1];
B = [2; 0; 1];
C = [1 1 0];
D = 0;
Ob_m = obsv(A,C);
ctrb_m = ctrb(A,B);
controllable_rank = rank(ctrb_m);
observable_rank = rank(Ob_m);
unobservable_states = length(A) - observable_rank % This value equals 0 implies fully observable
uncontrollable_states = length(A) - controllable_rank % This value equals 0 implies fully controllable
%% Problem 6 d
A = [0 1;4 0];
B = [0; 1];
C = [-1 1];
D = 0;

[num, den]=ss2tf(A,B,C,D)

%% Problem 6 e
A = [0 1;4 0];
B = [0; 1];
ctrb_m = ctrb(A,B)

%% Problem 6f
A = [0 1;4 0];
B = [0; 1];
K = acker(A,B,[-4 -4])
