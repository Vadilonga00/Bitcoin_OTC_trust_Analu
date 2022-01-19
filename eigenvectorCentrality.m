function [imp_eigC] = eigenvectorCentrality(A)

[autovettori, autovalori]=eig(A); 
%calcolo autovalori e autovettori di A

eigDom=abs(autovettori(:,end)); 
%trovo autovettore associato all'autovalore massimo

imp_eigC=eigDom./sum(eigDom); %normalizzo il risultato

end

