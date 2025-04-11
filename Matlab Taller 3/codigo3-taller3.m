% Codigo 3
clc; clear; close all;

% Definir la variable de Laplace
 s = tf('s');

% Definir las funciones de transferencia dadas en la imagen
 G = tf([4] , [1 0]);
 H = tf([5]);
 K = 10;
 

%% Paso 1: Combinación de G y K en serie
GK = series(K,G) ; % Multiplicación de bloques en serie

%% Paso 2: Simplificación de la malla de retroalimentación con H
% Aplicar la fórmula de realimentación negativa: Geq = G / (1 + G*H)
G_final = feedback(GK, H); % Retroalimentación negativa con H

% Mostrar la función de transferencia final
disp('La función de transferencia final Y(s)/U(s) es:');
G_final

% Respuesta al escalón unitario
step(G_final)
title('Dominio del tiempo a la entrada escalón unitario')
xlabel('Tiempo (s)')
ylabel('Salida Y(t)')
grid on