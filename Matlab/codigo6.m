Codigo 6
%clc; clear; close all;

% Definir la variable de Laplace
%s = tf('s');

% Definir las funciones de transferencia dadas en la imagen
%G1 = 1 / (s + 1);
%G2 = 4 / (s + 2);
%G3 = s;
%G4 = (s+1)/(2*s + 3);

%% Paso 1: Combinación de G1 y G2 en paralelo
% La combinación en paralelo se hace con suma directa
%H2 = G1 + G2;

%% Paso 2: Eliminación del lazo de retroalimentación
%Geq2 = feedback(G3, G4);

%% Paso 4: Serie de Geq2, H1
%G_final = Geq2 * H2;
% Mostrar la función de transferencia final
%disp('La función de transferencia final %Y(s)/R(s) es:');
%G_final
