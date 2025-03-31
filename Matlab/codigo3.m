Codigo 3
% clc; clear; close all;

% Definir la variable de Laplace
% s = tf('s');

% Definir las funciones de transferencia dadas en la imagen
% G1 = 10 / (s + 1);
% G2 = 1 / (2*s + 0.5);
% G3 = 540;
% G4 = 0.1;

%% Paso 1: Combinación de G1 y G2 en serie
% G12 = G1 * G2; % Multiplicación de bloques en serie

%% Paso 2: Simplificación de la malla de retroalimentación con G4
% Aplicar la fórmula de realimentación negativa: Geq = G / (1 + G*H)
% G123 = feedback(G12*G3, G4); % Retroalimentación negativa con G4

%% Paso 3: Eliminación de lazo interno con G3
% Multiplicación en serie con G3
% G_final = feedback(G123, 1);

% Mostrar la función de transferencia final
% disp('La función de transferencia final W(s)/Wd(s) es:');
% G_final
