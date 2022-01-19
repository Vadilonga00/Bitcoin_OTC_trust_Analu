function [deg_in,deg_out] = Degree(G)

deg_in = indegree(G);  %mi restituisce per ogni nodo una colonna con il numero di connessioni che puntano verso l'interno in corrispondenza di un vertice


deg_out = outdegree(G); % mi restituisce per ogni nodo una colonna con il numero di connessioni che hanno origine in un vertice e puntano verso l'esterno verso altri vertici

end

