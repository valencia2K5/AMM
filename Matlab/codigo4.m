Codigo 4
%clc; clear; close all;


% Definir las funciones de transferencia dadas en la imagen
%syms G1 G2 G3 G4 G5 G6 s

%% Paso 1: Combinación de G4 y G5 en paralelo
% La combinación en paralelo se hace con suma directa
%G45 = G4 + G5;

%% Paso 2: Combinacion de G45 serien con G3
%G345 = G3 * G45;

%% Paso 3: Retroaliemntacion G2
%Geq2 = G2/1+G2;

%% Paso 4: Seire Geq2 con G345
%Geq3 = Geq2 * G345;

%% Paso 5: Multiplicación en serie con Geq3 y G2
%G_total = Geq3 * G1;

%% Paso 6: Eliminación de la retroalimentación con G6
% Aplicar la fórmula de realimentación negativa: Geq = G / (1 + G*H)
%G_final = simplify(G_total/(1+%(G_total)*G6));


% Mostrar la función de transferencia final
%disp('La función de transferencia final Y(s)/R(s) es:');
%G_final
