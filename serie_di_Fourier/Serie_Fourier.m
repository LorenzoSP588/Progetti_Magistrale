clear all; close all; clc;

%% Parametri
T_0 = 2*pi;
Omega_0 = 2*pi/T_0;
t = linspace(0, T_0, 1000);
N_max = 20; % Numero massimo di armoniche

% Definizione della funzione | la funzione deve essere periodica
f_t = @(t) cos(5*t + 50) + 3*sin(3*t) + 2*sin(10.*t + 4).*cos(10.*t + 4);
y_target = f_t(t);


%% Setup Grafico
figure('Color', 'w');
plot(t, y_target, 'k-', 'LineWidth', 1.5, 'DisplayName', 'Funzione Originale');
hold on; grid on;
colors = jet(N_max); % Genera una mappa di colori sfumata

%% Calcolo e Plotting
a_0 = (1/T_0) * trapz(t, y_target);
current_fourier = a_0 * ones(size(t));

for k = 1:N_max
    % Calcolo coefficienti una sola volta per armonica
    a_k = (2/T_0) * trapz(t, y_target .* cos(k * Omega_0 * t));
    b_k = (2/T_0) * trapz(t, y_target .* sin(k * Omega_0 * t));
    
    % Aggiornamento della somma parziale
    armonica_k = a_k * cos(k * Omega_0 * t) + b_k * sin(k * Omega_0 * t);
    current_fourier = current_fourier + armonica_k;
    
    % Plot con colore specifico e etichetta per la legenda
    plot(t, current_fourier, 'Color', colors(k,:), 'LineWidth', 1.5, ...
        'DisplayName', sprintf('Somma fino a n=%d', k));
    pause(1)
end

%% Raffinamento Estetico
title('\textbf{Approssimazione della Serie di Fourier}', 'Interpreter', 'latex', 'FontSize', 14)
xlabel('Tempo [s]', 'Interpreter', 'latex')
ylabel('$f(t)$', 'Interpreter', 'latex')
legend('Location', 'northeastoutside', 'FontSize', 8)
