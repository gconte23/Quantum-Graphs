function [x1,x2,y] = fullEdge(G,k)
Edges=G.Edges; 
Nodes=G.Nodes;
n1=Edges.EndNodes(k,1);
n2=Edges.EndNodes(k,2);
x1=[Nodes.x1(n1); Edges.x1{k}; Nodes.x1(n2)];
x2=[Nodes.x2(n1); Edges.x2{k}; Nodes.x2(n2)];
y=[Nodes.y(n1); Edges.y{k}; Nodes.y(n2)];