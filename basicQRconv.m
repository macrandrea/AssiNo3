function [ii,eigen]=basicQRconv(A,tol)
n=length(A);
e=A;
ii=0;
ee=sort(eig(A),'descend');
    while norm(diag(e)-ee)>10^(-tol)
        for i=1:n
            [Q,R]=qr(e);
            e=R*Q;
            eigen=diag(e);
        end 
         ii=ii+1;
    end
end  
