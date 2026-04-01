%Variaveis importadas
P_im = 40000;
SA = 20;
N = 800;


%Variaveis do sistema
%Bloco 1
nVol = 0.85;
Hl = 44e6;
sigma0 = 14.7;
R = 287;
Vm = 300;  % Ganho = nVol*Hl/(sigma0*R*Vm)
%Bloco 2
SA_MBT = 25;
kqueda = 0.001; %kζ
pmeo = 1; %a definir valor
%Bloco 7
k1 = 1.44e5;
k2 = 0.46;
k3 = 9.1e-4;
k4 = 0.075;
S = 0.0814;
B = 0.072;
emax = 1.8; %Π_emax
%Bloco 8
pme_calculado = 1; %definir valor
%Bloco 9
V_d = 0.0013;