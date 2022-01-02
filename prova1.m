clc
clear
format long
A=[4 3 2 1
    3 4 3 2
    2 3 4 3
    1 2 3 4];
tic
[eigen,emat]=basicQR(A);
E1 =basicQRwithN(A,1);
E5 =basicQRwithN(A,5);
E10=basicQRwithN(A,10);
E15=basicQRwithN(A,15);
toc
e=  [11.0990195135928
    3.41421356237309
    0.900980486407216
    0.585786437626904
    ];
Eig1 =diag(E1 );
Eig5 =diag(E5 );
Eig10=diag(E10);
Eig15=diag(E15);
diffE1     =norm(Eig1 -e);
diffE5     =norm(Eig5 -e);
diffE10    =norm(Eig10-e);
diffE15    =norm(Eig15-e);
diffeigen  =norm(eigen-e);


%heatmap(emat)
%heatmap(E1)
%heatmap(E5)
%heatmap(E10)
%heatmap(E15)
