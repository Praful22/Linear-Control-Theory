A = [-5 -1; 3 -1];
B = [2; 5];
C = [1 2];
D = 0;
[NUM, DEN] = ss2tf(A,B,C,D);
display(NUM);
display(DEN);