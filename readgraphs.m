function [A,G,n] = readgraphs(ARCHI)
ntemp=max(ARCHI); % voglio calcolare A, trovo max per ciascuna colonna ma c'è anche la terza 
n=max(ntemp(1:2)); %calcolo max solo tra le prime due

A=zeros(n,n); % matrice adiacenza pesata

for i=1:length(ARCHI)
    from=ARCHI(i,1);
    to=ARCHI(i,2);
    weight=ARCHI(i,3);
    A(from,to)=weight;
end

G=digraph(A); %uso digraph perchè è un grafo diretto, A non simmetrica
end

