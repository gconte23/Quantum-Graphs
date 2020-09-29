function [vv1,vv2,vv3]=tribellResolveTriples(V,k,N1,N2)
% Recombines the eigenfunctions of multiplicity-three eigenvalues on dumbell
% graph in order to display that these eigenfunctions are identically zero
% on some edges

v1=V(:,k);
v2=tribellShift(v1,N1,N2);
v3=tribellShift(v2,N1,N2);
vv=[v1 v2 v3];
M=vv(end-N2*(1:4:9)/4,:);
w1=M\[1;0;0];
vv1=vv*w1; vv1=vv1/max(vv1);
w1=M\[0;1;0];
vv2=vv*w1; vv2=vv2/max(vv2);
w1=M\[0;0;1];
vv3=vv*w1; vv3=vv3/max(vv3);