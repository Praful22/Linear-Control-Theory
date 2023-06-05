% Linear Control Theory %
% Problem B-2-15 in Matlab 
% Praful Sigdel
% Due Date: Sep 5


num = [10 60 80];
den = [1 14 68 130 75];
[r,p,k]=residue(num,den);
disp(r);
