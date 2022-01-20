function [w] = multicriteria_decision(W)
% 1)costruisco r
P=log(W); %log dei pesi
P(find(isinf(P)))=0; %r=sum(P')', isinf sono gli indici con valore infinito (log di zero mette -inf) e li mettiamo uguali a zero
r=P*ones(n,1); %r è la somma degli elementi sulla riga (prodotto riga colonna)

% 2)costruisco L
A=(W>0); %mi mette 1 dove W è positiva
D=diag(sum(A'));
L=D-A; %laplaciana

% 3) risolvo Ly=r per y
y=pinv(L)*r;
w=exp(y);
w=w./sum(w); %normalizzo

end

