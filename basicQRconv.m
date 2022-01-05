function [ii,eigen]=basicQRconv(A,tol)
n=length(A);
e=A;
ii=0;
ee=sort(eig(A),'descend');
    for i=1:n
        for j=i+1:n
            while norm(sort(diag(e),'descend')-ee)>10^(-tol)
                [Q,R]=qr(e);
                e=R*Q;
                ii=ii+i;
                eigen=diag(e);
            end
        end
    end   
end  
