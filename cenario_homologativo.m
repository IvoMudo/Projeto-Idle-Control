%% CENÁRIO HOMOLOGATIVO
% Compara operação sem e com cargas parasitas

%% CENÁRIO 1 — Sem cargas
run('parametros.m')
P_AC        = 0;
P_alt       = 0;
P_fan       = 0;
P_eletrico  = 0;
P_aquecedor = 0;

out1 = sim('motor_idle');
n1   = min(length(out1.N_data), length(out1.tout));
N1   = out1.N_data(1:n1);
t1   = out1.tout(1:n1);
Mr1  = out1.Mreserva_data(1:n1);

%% CENÁRIO 2 — Com todas as cargas
run('parametros.m')

out2 = sim('motor_idle');
n2   = min(length(out2.N_data), length(out2.tout));
N2   = out2.N_data(1:n2);
t2   = out2.tout(1:n2);
Mr2  = out2.Mreserva_data(1:n2);

%% GRÁFICO 1 — Rotação
figure(1)
subplot(2,1,1)
plot(t1, N1, 'b', 'LineWidth', 1.5, 'DisplayName', 'Sem cargas')
hold on
plot(t2, N2, 'r', 'LineWidth', 1.5, 'DisplayName', 'Com cargas')
yline(800, '--k', 'N_{ref} = 800 RPM', 'LineWidth', 1.2)
yline(550, '--r', 'Limiar stall = 550 RPM', 'LineWidth', 1.2)
ylabel('N [RPM]')
title('Rotação do Motor — Cenário Homologativo')
legend('Location', 'best')
grid on

subplot(2,1,2)
plot(t1, Mr1, 'b', 'LineWidth', 1.5, 'DisplayName', 'Sem cargas')
hold on
plot(t2, Mr2, 'r', 'LineWidth', 1.5, 'DisplayName', 'Com cargas')
yline(0, '--r', 'Limite stall', 'LineWidth', 1.2)
ylabel('Torque Reserva [Nm]')
xlabel('Tempo [s]')
title('Torque Disponível — Cenário Homologativo')
legend('Location', 'best')
grid on

%% MÉTRICAS
N_ref_val = 800;
erro1 = N_ref_val - N1;
erro2 = N_ref_val - N2;

IAE1   = trapz(t1, abs(erro1));
IAE2   = trapz(t2, abs(erro2));
NRMSE1 = sqrt(mean(erro1.^2)) / range(N1) * 100;
NRMSE2 = sqrt(mean(erro2.^2)) / range(N2) * 100;

fprintf('\n=== MÉTRICAS ===\n')
fprintf('Sem cargas: IAE = %.2f | NRMSE = %.2f%%\n', IAE1, NRMSE1)
fprintf('Com cargas: IAE = %.2f | NRMSE = %.2f%%\n', IAE2, NRMSE2)
fprintf('Queda max N (com cargas): %.1f RPM\n', min(N2) - N2(1))
fprintf('Torque reserva min (com cargas): %.2f Nm\n', min(Mr2))