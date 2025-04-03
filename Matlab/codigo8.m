Codigo 8
% Definir la variable simbólica para Laplace
syms s G1 G2 G3 H1 H2 H3

% Sumar los bloques en paralelo (H1 y G2)
H1G2_paralelo = H1 + G2;

% Aplicar la retroalimentación a G2 con H1G2_paralelo
G2_eq = H1G2_paralelo / (1 + G2 * H1G2_paralelo);  

% Multiplicar en serie G3 y G2_eq
G_series = G3 * G2_eq;

% Aplicar la retroalimentación a G_Serie con H3
G3_eq = G_series / (1 + G_series * H3);  

% la serie de G1 y G3_eq
G_total = G1 *G3_eq; 

% Retroaliemntacion Unitaria de G_Total 
G1_Total = G_total/(G_total + 1);

% Mostrar la función de transferencia en lazo cerrado
disp('La función de transferencia en lazo cerrado es:')
pretty(G1_Total)  % Muestra el resultado de forma legible
