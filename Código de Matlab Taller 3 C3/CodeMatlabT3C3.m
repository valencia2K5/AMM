clear
clc

% Sistema 1
G1 = tf([10], [1 14 0 43 30]);

% -------------------------------
% Parte 1: Lugar de las raíces
% -------------------------------
figure;
rlocus(G1);
grid on;
title('Lugar Geométrico de las Raíces (LGR)');
xlabel('Parte real');
ylabel('Parte imaginaria');

% -------------------------------
% Parte 2: Análisis con valores de K
% -------------------------------
Ks = linspace(0, 1000, 5);  % Valores de K a evaluar
z_ol = zero(G1);           % Ceros de lazo abierto
p_ol = pole(G1);           % Polos de lazo abierto

figure;
axis([-20 10 -10 10]);
grid on;
hold on;
title('Lugar Geométrico de las Raíces (5 puntos)');
xlabel('Parte real');
ylabel('Parte imaginaria');

% Graficar polos del sistema en lazo abierto
plot(real(p_ol), imag(p_ol), 'rx', 'MarkerSize', 10, 'LineWidth', 2);

% Evaluar y graficar polos en lazo cerrado para cada K
for i = 1:length(Ks)
    K = Ks(i);
    T = feedback(K*G1, 1);    % Sistema en lazo cerrado
    p_cl = pole(T);           % Polos de lazo cerrado

    for j = 1:length(p_cl)
        x = real(p_cl(j));
        y = imag(p_cl(j));
        plot(x, y, 'ko', 'MarkerSize', 8);
        text(x + 0.5, y, ['K = ' num2str(K)], 'FontSize', 8);
    end

    % Evaluación de estabilidad
    if all(real(p_cl) < 0)
        fprintf('Para K = %.2f, el sistema es ESTABLE.\n', K);
    elseif any(real(p_cl) > 0)
        fprintf('Para K = %.2f, el sistema es INESTABLE.\n', K);
    else
        fprintf('Para K = %.2f, el sistema está en el BORDE de estabilidad.\n', K);
    end
end

legend('Polos LA', 'Polos LC');
saveas(gcf, 'LGR_5_puntos.png');
