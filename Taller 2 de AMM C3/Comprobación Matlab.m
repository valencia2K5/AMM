% Script para comprobar estabilidad con Routh-Hurwitz

% Coeficientes del polinomio: s^5 + 3s^4 + 5s^3 + 4s^2 + s + 3
p = [1 3 5 4 1 3];

% Calcular polos para confirmar
r = roots(p);
disp('Polos del polinomio:');
disp(r);

% Contar cuántos tienen parte real positiva
num_inestables = sum(real(r) > 0);
fprintf('Número de polos en el semiplano derecho: %d\n\n', num_inestables);

% Construir tabla de Routh-Hurwitz
rt = routh_hurwitz(p);

disp('Tabla de Routh-Hurwitz:');
disp(rt);

% Evaluar cambios de signo
first_col = rt(:,1);
sign_changes = sum(sign(first_col(1:end-1)) ~= sign(first_col(2:end)));
fprintf('Cambios de signo en la primera columna: %d\n', sign_changes);

if sign_changes == 0
    fprintf('El sistema es ESTABLE.\n');
else
    fprintf('El sistema es INESTABLE.\n');
end

% ================================
% Función Routh-Hurwitz
% ================================
function routh_table = routh_hurwitz(coeffs)
    n = length(coeffs);
    m = ceil(n/2);
    routh_table = zeros(n, m);

    % Rellenar las dos primeras filas
    routh_table(1, :) = coeffs(1:2:end);
    routh_table(2, 1:min(end, m)) = coeffs(2:2:end);

    % Construcción de la tabla
    for i = 3:n
        for j = 1:m-1
            a = routh_table(i-2, 1);
            b = routh_table(i-2, j+1);
            c = routh_table(i-1, 1);
            d = routh_table(i-1, j+1);
            if c == 0
                c = 1e-6;  % evitar división por cero
            end
            routh_table(i, j) = ((c * b) - (a * d)) / c;
        end
        if all(routh_table(i, :) == 0)
            % Caso especial: fila de ceros
            syms s
            aux_poly = poly2sym(routh_table(i-1, :), s);
            deriv = diff(aux_poly);
            coeffs_aux = double(coeffs(deriv));
            routh_table(i, 1:length(coeffs_aux)) = coeffs_aux;
        end
    end
end
