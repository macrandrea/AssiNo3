clc
clear

a=[4,-1,-1,0;-1,4,0,-1;-1,0,4,-1;0,-1,-1,4];
a1=[-1,-1,0]';
e1=[1,0,0]';
v1=a1+sign(a1(1))*norm(a1)*e1;
u1=v1/norm(v1);
%P1=eye(3)-2*u1*u1';
P1=[1	0	0	0
    0	-0.707106781186547	-0.707106781186548	0
    0	-0.707106781186548	0.707106781186548	0
    0	0	0	1];
T=P1*a*P1;
a2=[0,1.41421356237310]';
e2=[1,0]';
v2=a2+sign(a2(1))*norm(a2)*e2;
u2=v2/norm(v2);
%P2=eye(2)-2*u2*u2';
P2=[1	0	0	0
    0	1	0	0
    0	0	0	1
    0	0	1	0];
B=[4	0	-1.41421356237310
0	4.00000000000001	0
-1.41421356237310	0	4
    ];
B2=P2*P1*a*P1*P2
























% x1=[4,-1,-1,0]';
% y1=[4,-1,0,0]';
% z=x1-y1;
% w1=[z/norm(x1-y1)];
% P1=[1,0,0,0;
%     0,1,0,0;
%     0,0,-1,0;
%     0,0,0,1];
% H=P1*a*P1;
% x2=[-1,4,0,-1]';
% y2=[-1,4,-1,0]';
% z2=x2-y2;
% w2=z2/norm(z2);
% P2=eye(4)-2*w2*w2';
% H2=P2*H*P2;