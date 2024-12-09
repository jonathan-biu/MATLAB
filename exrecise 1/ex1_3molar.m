% clear workspace
clear
% set volume to 3 L
V = 3;
% calculate molar mass of N2O4 given mass of O = 16 and N = 14
moleMass_N2O4 = 14 * 2 + 16 * 4;
% set mass of 184g of N2O4
M = 184;
% calculate number of moles by dividing mass by molar mass
moleNum_N2O4 = M / moleMass_N2O4;
% calclulate concentration in mole/litre by dividing moles by volume in
% litres
C = moleNum_N2O4 / V;
