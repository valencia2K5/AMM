%clc; clear; close all;

% Definir la variable de Laplace
%s = tf('s');

% Definir las funciones de transferencia dadas en la imagen
%G1 = 6 / (s^2 + 2*s + 1);
%G2 = 1 / (s + 3);
%G3 = 1 / (s + 1);
%G4 = 0.01 / (s + 2);
%G5 = 1 / (s + 4);

%% Paso 1: Combinación de G4 y G5 en paralelo
% La combinación en paralelo se hace con suma directa
%H2 = G4 + G5;

%% Paso 2: Multiplicación de G3 y H2 en serie
%H1 = G3 * H2;

%% Paso 3: Eliminación del lazo de retroalimentación
%Geq2 = feedback(G2,1);

%% Paso 4: Serie de Geq2, H1
%G_final = Geq2 * G1;
% Mostrar la función de transferencia final
%disp('La función de transferencia final Y(s)/R(s) es:');
%G_final
