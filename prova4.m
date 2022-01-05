clc
clear
A=[4 3 2 1
    3 4 3 2
    2 3 4 3
    1 2 3 4];
n=8;
N=zeros(n,1);
tic
for j=1:n
[ii,e]=basicQRshift(A,j);
N(j)=ii;
end
toc
x=linspace(1,ii,14);
plot(N,'h--')