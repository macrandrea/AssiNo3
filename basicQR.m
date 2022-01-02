function [eigen]=basicQR(A)
n=length(A);
tol=10^(-14);
e=A;
    for i=1:n
        for j=i+1:n
            while max(abs(e(i,j)))>tol
                [Q,R]=qr(e);
                e=R*Q;
            end
            eigen=diag(e);
        end
    end   
end  
