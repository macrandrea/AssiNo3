function [ii,eigen]=basicQRconv(A,tol)
n=length(A);
%tol=10^(-14);
%ii=zeros(n,1);
e=A;
ii=0;
ee=sort(eig(A),'descend');
    for i=1:n
        for j=i+1:n
            while norm(diag(e)-ee)>10^(-tol)
                [Q,R]=qr(e);
                e=R*Q;
                ii(i)=ii(i)+i;
            end
            emat=e;
            eigen=diag(emat);
            ii;
        end
    end   
end  
