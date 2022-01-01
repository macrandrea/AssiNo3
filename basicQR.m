function E=basicQR(A)
n=length(A);
    for i=1:n
        if A(i)>10^(-14)
            [Q,R]=qr(A);
            E(i)=Q*R;
        end
    end
end