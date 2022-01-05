function [ii,eigen]=qrshift(A,tol)
n=length(A);
e=A;
[V,ei]=eig(A);
x=diag(e);
m=norm(ei-x);
ii=0;
	while m>10^(-tol)
		for j=1:n
			mu=V(:,j)'*e*V(:,j);
			shift=mu*eye(n);
			[Q,R]=qr(e-shift);
			e=R*Q+shift;
			eigen=sort(diag(e),'descend');
			m=norm(diag(ei)-sort(diag(e),'asc'));
		end
		ii=ii+1;
	end
end