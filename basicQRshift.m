function [ii,eigen]=basicQRshift(A,tol)
n=length(A);
e=A;
ii=0;
[V,l]=eig(e);
eg=diag(l);
ee=sort(eg,'descend');
eigen=zeros(n);
    for i=1:n
        for j=i:-1:n
            while norm(sort(diag(e),'descend')-ee)>10^(-tol)
                mu=V(:,j)'*e*V(:,j);
                shift=mu*eye(n);
                [Q,R]=qr(e-shift);
                e=R*Q+shift;
                eigen=diag(e);
                ii=ii+i;
            end
        end
    end
end  