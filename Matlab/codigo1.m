% clc; clear; close all;

% Definir las funciones de transferencia como variables simbólicas
% syms G1 G2 G3 G4 H1 H2 s

% Paso 1: Reducir Serie G1 Y G4
% Geq1 = (G1*G4);

% Paso 2: Multiplicar con Geq1 retroalimentacion H1
% Geq2 = Geq1/(1-(Geq1)*(H1));

% Paso 3: Sumar G2 y G3 (paralelo)
% Geq3 = G2 + G3;

% Paso 4: Multiplicar con Geq2
% Geq4 = Geq2 * Geq3;

% Paso 5: Aplicar la realimentación con H2
% Gfinal = simplify((Geq4) / (1 + Geq4 * H2));

% Mostrar la función de transferencia final
% disp('La función de transferencia final C(s)/R(s) es:');
% pretty(Gfinal);
