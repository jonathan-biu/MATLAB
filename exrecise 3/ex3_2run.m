% clear workspace
clear
% set var0  = [0,5,9,2] array
var0 = [0,5,9,2];
% set duplicate array
var_dup  = ex3_2dup(var0);
% set var1 = var_dup(2n)
var1 = var_dup(2:2:end);
% set var2 = var_dup(2n-1)
var2 = var_dup(1:2:end);
% declare dif1 = var0-var1
dif1 = var0-var1;
% declare dif2 = var0-var2
dif2 = var0-var2;