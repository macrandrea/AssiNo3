function e=basicQRwithN(A,n)
Qu=cell(n,1);
Erre=cell(n,1);
E=cell(n,1);
E{1,1}=A;
    for i=1:n
        [Qu{i,1},Erre{i,1}]=qr(E{i,1});
        E{i+1,1}=Erre{i,1}*Qu{i,1};
        e=cell2mat(E(i+1,1));
    end   
end