clc
clear
A=[4 3 2 1
3 4 3 2
2 3 4 3
1 2 3 4];

[eigen,E]=basicQR(A);
e= eig(A)