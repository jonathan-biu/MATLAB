% clear workspace
clear
% set kacetic
Kacetic = 1.75e-5;
Kiodic = 0.17;
% set func
V = linspace(1,10,20);
% use d3acid on acetic
pH_AceticV = d3acid(0.01,V,Kacetic);
% use d3acid on Iodic
pH_IodicV = d3acid(0.01,V,Kiodic);
% subplot 4 graphs
figure;
% set top left
subplot(2,2,1)
plot(V,pH_IodicV,"g-",V,pH_AceticV,"b-")
title('pH vs Volume (L)')
xlabel('Volume')
ylabel('pH')
ylim([2,4])
% set top right
subplot(2,2,2)
semilogx(V,pH_IodicV,"g-",V,pH_AceticV,"b-")
title('pH vs Log of Volume (L)')
xlabel('Volume')
ylabel('pH')
ylim([2,4])
% set M for moles
M = linspace(0.01,0.1,20);
pH_AceticM = d3acid(M,1,Kacetic);
pH_IodicM = d3acid(M,1,Kiodic);
% set bottom left
subplot(2,2,3)
plot(M,pH_IodicM,"g-",M,pH_AceticM,"b-")
title('pH vs Mole')
xlabel('Mole')
ylabel('pH')
ylim([1,3.5])
% set bottom right
subplot(2,2,4)
semilogx(M,pH_IodicM,"g-",M,pH_AceticM,"b-")
title('pH vs Log of Mole')
xlabel('Mole')
ylabel('pH')
ylim([1,3.5])
legend('Acetic','Iodic',Location='best')
sgtitle('Acid strength')