[A,G,n] = readgraphs(bitcoin);

[deg_in,deg_out] = Degree(G)

[importanza_PWC] = PWC(A,n);

plot(G)