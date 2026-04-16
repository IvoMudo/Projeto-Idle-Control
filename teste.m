run('parametros.m')
out = sim('motor_idle', 'StopTime', '120');
n   = min(length(out.N_data), length(out.tout));
tout = out.tout(1:n);

fprintf('N final    = %.2f RPM\n',  mean(out.N_data(n-500:n)))
fprintf('SA final   = %.2f graus\n', mean(out.SA_data(n-500:n)))
fprintf('Alpha final = %.4f graus\n', mean(out.Alpha_data(n-500:n)))
fprintf('Erro final = %.2f RPM\n', ...
    800 - mean(out.N_data(n-500:n)))