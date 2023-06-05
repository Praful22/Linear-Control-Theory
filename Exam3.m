%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Praful Sigdel
% Exam 3
% Linear Control Theory
% December 14 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Problem 1 
A = [-1 1;0 2];
B = [1; 0];

% Problem 1 b
ctrb_m = ctrb(A,B);
rank(ctrb_m) % Should equal to 2 to be controllable. 


%% Problem 2
A = [0 1 0; 0 0 1;-6 -11 -6];
B = [0;0;10];
C=[1 0 0];
D=0;

% problem b
ctrb_m = rank([B, A*B, A*A*B]) % This value should equal to total number of
                               % states of the system i.e. 3 to be
                               % controllable.
% problem c
K = place(A,B,[-10 -2+2*sqrt(3)*j -2-2*sqrt(3)*j])


%% Problem 4
A = [0 1 0; 0 0 1; -5 -6 0];
B = [0; 0; 1];
C = [1 0 0];

% Problem a
observ_m = [C.' A.'*C.' (A.')^2*C.']
rank(observ_m) % This value should equal to the order of the system i.e. 3

% Problem b
% Design a full-order observer so that the observer pole lies at s =-10,
% s=-15, and s=-10. 
L = acker(A.', C.',[-10 -10 -15])

%Problem C
ctrb_ma = [B, A*B, A*A*B];
rank(ctrb_ma)

%Problem D
K_fsf = place(A,B,[-2+4*j, -2-4*j, -4])

%% Problem 7
A = [0 1 0;0 0 1;0 -2 -1.25];
B = [0 0;0 0;100 -80];
C = [1 0 0];
D = 0;
rank(ctrb(A,B)) % This should equal 3(order of the system) to be controllable.
K = place(A,B,[-34 -35 -36])