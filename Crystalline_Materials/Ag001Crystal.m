function [Crys3D, lx, ly, lz, a, b, c, dz] = Ag001Crystal(na, nb, nc, ncu, rms3d)
CrysPar.na = na;
CrysPar.nb = nb;
CrysPar.nc = nc;
a = 4.0853; 
b = 4.0853; 
c = 4.0853;
CrysPar.a = a;
CrysPar.b = b;
CrysPar.c = c;
CrysPar.nuLayer = 2;
charge = 0;
% Ag = 47
% Z charge x y z rms3d occupancy
CrysPar.uLayer(1).atoms = [47, charge, 0.0, 0.0, 0.0, rms3d, 1; 47, charge, 0.5, 0.5, 0.0, rms3d, 1];
CrysPar.uLayer(2).atoms = [47, charge, 0.0, 0.5, 0.5, rms3d, 1; 47, charge, 0.5, 0.0, 0.5, rms3d, 1];
Crys3D = il_crystal_by_layers(CrysPar);

dz = CrysPar.c/ncu;
lx = na*CrysPar.a; ly = nb*CrysPar.b; lz = nc*CrysPar.c;