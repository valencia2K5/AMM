% clc; clear; close all;

% Definir las funciones de transferencia como variables simbólicas
% syms G1 G2 G3 H1 H2 s
%%Paso 1 Serie G2 y G3 
% Geq1 = (G1*G2);

%% Paso 1: Reducción de la retroalimentación H1
% La retroalimentación negativa con H1 afecta a la combinación en serie de G2 y G3.
% Se usa la fórmula de retroalimentación: Geq = G / (1 + G * H)
% Geq2 = (Geq1) / (1 - (Geq1 * H1));

%% Paso 2: Multiplicar con G1 (serie)
% Como G1 está en serie con Geq1, se multiplican:
% Geq3 = G3 * Geq2;

%% Paso 3: Reducción de la retroalimentación H2
% Aplicar la fórmula de realimentación negativa: Geq_final = Geq / (1 + Geq * H)
% Gfinal = simplify(Geq3) / (1 + (Geq3 * (H2/G1)));

% Mostrar la función de transferencia final
% disp('La función de transferencia final C(s)/R(s) es:');
% pretty(Gfinal);
