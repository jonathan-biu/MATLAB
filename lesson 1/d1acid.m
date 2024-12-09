 Ka = 1.75e-5;
C_HX = 0.1;
b = Ka;
c = -Ka * C_HX;
C_H = (-b+sqrt(b^2-4*c))/2
pH = -log10(C_H)
save acidVars