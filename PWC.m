function [importanza_PWC] = PWC(A,n)

importanza_PWC=[];
for i=1:n
    A_temp=A; %creo una copia di A per non modificarla

    A_temp(i,:)=0; %rimuovo il nodo i
    A_temp(:,i)=0;

    DIST=graphallshortestpaths(sparse(A_temp)); %calcolo i collegamenti con sparse
    %graphallshortestpaths dice i cammini minimi per ogni collegamento
    %DIST(i,j)=inf se non c'è un cammino tra i e j
    DIST(find(DIST==inf))=0; %sostituisco inf con zero
    DIST=(DIST>0); %levo i cammini che valgono zero, ottengo una matrice logica
    PWC=sum(sum(DIST));
    nPWC=PWC/(n*(n-1));

    importanza_PWC=[importanza_PWC;1-nPWC];
end

end

