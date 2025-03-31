Codigo 7
clc; clear; close all;

% Definir las funciones de transferencia como variables simbólicas
%syms G1 G2 G3 G4 s

%% Paso 1: Reducción de la retroalimentación H1
% La retroalimentación negativa con H1 afecta a la combinación en serie de G2 y G3.
% Se usa la fórmula de retroalimentación: Geq = G / (1 + G * H)
%Geq1 = G1+G2;

%% Paso 2: Retroalimentacion G3 con G4
%Geq2 = G3/(1+(G3*G4));

%% Paso 3: Reducción de la retroalimentación de Geq1 con Geq2
% Aplicar la fórmula de realimentación negativa: Geq_final = Geq / (1 + Geq * H)
%Gfinal = Geq1/(1+(Geq1*Geq2));

% Mostrar la función de transferencia final
%disp('La función de transferencia final C(s)/R(s) es:');
%pretty(Gfinal);
