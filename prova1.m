clc
clear
format long
A=[4 3 2 1
3 4 3 2
2 3 4 3
1 2 3 4];
tic
[eigen]=basicQR(A);
toc
e= eig(A);
