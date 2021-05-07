function column2graph(G,col)
% Assigns the a column vector (of the right length) to the Edges.y field of
% a quantum graph with the same structure as template

[~,nxC,nxTot] = G.nx;
assert(length(col) == nxTot,'Column and template not compatible.')

for k=1:numedges(G)
    G.qg.Edges.y{k}=col(nxC(k)+1:nxC(k+1));
end

% Use the boundary conditions to extend the solution to the vertices
if G.isUniform
    G.interpAtNodes; 
else  % in the case of chebyshev discretization
%     for k=1:numnodes(G)
%         G.qg.Nodes.y(k)=col(nxC(k+1)-1);
%     end
end