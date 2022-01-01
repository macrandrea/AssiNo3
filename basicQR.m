function [eigen,E]=basicQR(A)
n=length(A);
Qu=cell(n,1);
Erre=cell(n,1);
E=cell(n,1);
E{1,1}=A;
    for i=1:n*1000
        [Qu{i,1},Erre{i,1}]=qr(E{i,1});
        E{i+1,1}=Erre{i,1}*Qu{i,1};
        %numericCells = E{i+1,1};
        e=cell2mat(E(i+1,1));
            for j=i+1:n
                if e(i,j)<10^(-14)
                    eigen=diag(e);
                end
            end
        end
        
    
        eigen=diag(E{i+1,1});
end