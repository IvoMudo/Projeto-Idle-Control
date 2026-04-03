% === SCRIPT DE PARÂMETROS — rodar antes de qualquer simulação ===

% --- Pessoa 1: Fluxo de Ar ---
P_atm   = 101325;   % Pa — pressão atmosférica
T_im    = 300;      % K  — temperatura do coletor (isotérmico)
R       = 287;      % J/kg·K — constante do gás
kappa   = 1.4;      % razão de calores específicos
Cd      = 0.7;      % coeficiente de descarga da borboleta
Vm      = 0.0015;   % m³ — volume do coletor
nVol    = 0.85;     % eficiência volumétrica
V_d     = 0.0013;   % m³ — cilindrada do Firefly 1.3
N_ciclo = 2;        % motor 4 tempos
V       = 0.0015;   % m³ — volume do coletor de admissão (1,5 litros)

% --- Pessoa 2: Torque ---
Hl      = 44e6;     % J/kg — poder calorífico inferior gasolina
sigma0  = 14.7;     % razão estequiométrica ar/combustível
SA      = 20;       % graus BTDC — avanço de ignição inicial
SA_MBT  = 25;       % graus BTDC — ângulo de máximo torque
kqueda  = 0.001;    % coeficiente de queda da eficiência de ignição
k1      = 1.44e5;   % Pa — parâmetro ETH de atrito
k2      = 0.46;     % adimensional — parâmetro ETH
k3      = 9.1e-4;   % s²/m² — parâmetro ETH
k4      = 0.075;    % m — parâmetro ETH
S       = 0.0814;   % m — stroke do Firefly 1.3
B       = 0.072;    % m — bore do Firefly 1.3
emax    = 1.8;      % razão de boost máxima

% --- Pessoa 3: Rotação ---
J       = 0.25;     % kg·m² — inércia do virabrequim (provisório)

% --- Condições iniciais ---
N0      = 800;                  % RPM
omega0  = N0 * 2*pi/60;        % rad/s = 83.776
Pim0    = 40000;               % Pa — pressão inicial no coletor
pme_calculado = 0;             % placeholder — será substituído internamente

alpha   = 5; 