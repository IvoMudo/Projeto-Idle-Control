%% PARÂMETROS DO MODELO COMPLETO

% Fluxo de Ar
P_atm   = 101325;
T_im    = 300;
R       = 287;
kappa   = 1.4;
Cd      = 0.7;
V       = 0.0015;
nVol    = 0.85;
V_d     = 0.001;
N_ciclo = 2;

% Torque
Hl      = 44e6;
sigma0  = 14.7;
SA      = 20;
SA_MBT  = 25;
kqueda  = 0.001;
k1      = 1.44e5;
k2      = 0.46;
k3      = 9.1e-4;
k4      = 0.075;
S       = 0.0814;
B       = 0.072;
emax    = 1.8;

% Rotação
J       = 0.25;

% Condições iniciais
alpha   = 0.558;
%omega0  = 83.776;
%N0      = 800;
%Pim0    = 40000;
% Condições iniciais de equilíbrio
N0      = N_eq;       % ex: 800.x RPM
omega0  = omega_eq;   % ex: 83.8xx rad/s
Pim0    = Pim_eq;     % ex: 29xxx Pa

% Cargas parasitas
P_AC        = 2000;
P_alt       = 600;
P_fan       = 200;
P_eletrico  = 400;
P_aquecedor = 1500;
omega_nominal = 83.776;

% Proteção stall
N_stall = 550;

% Controlador
Kp    = 0.1848;
Ki    = 5.8824;
N_ref = 800;

% Emissões
SA_0       = 20;
delta_zeta = 0.05;