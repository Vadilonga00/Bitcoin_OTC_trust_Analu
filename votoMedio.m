function [media] = votoMedio(A,G,n)
d=indegree(G);
votiTot=sum(A);

media=[];
for i=1:n
    if d(i)~=0
        m=votiTot(i)/d(i);
        media=[media;m];
    else
        media=[media;0];
    end
end
 imp_media=media./sum(media);
end

