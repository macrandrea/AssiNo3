clc
clear
A=[4 3 2 1
    3 4 3 2
    2 3 4 3
    1 2 3 4];
n=14;
N=zeros(n,1);
tic
for j=1:n
[i,e]=basicQRconv(A,j);
N(j)=i;
end
toc
x=linspace(1,i,14);
plot(N,'h--')