%% Machine Parameters
nmax = 6000;                            % Max speed                          [rpm]
Tmax = 1.2*0.8223;                      % Maximum torque                     [N*m]
Trated = 0.2724;
Pmax = 1.2*445.3845;                    % Maximum power                      [W]
Ld   = 0.2e-3;                          % Stator d-axis inductance           [H]
Lq   = 0.2e-3;                          % Stator q-axis inductance           [H]
L0   = 0;                               % Stator zero-sequence inductance    [H]
Rs   = 0.36;                            % Stator resistance per phase        [Ohm]
Ke   = 4.64;
p    = 4;                               % Number of pole pairs
psim = 0.0064;                          % Permanent magnet flux linkage      [Wb]
Jm   = 7.0616e-06;                      % Rotor inertia                      [Kg*m^2]

%% High-Voltage System Parameters
Vnom = 24;                % Nominal DC voltage     [V]

%% Control Parameters
ActCV = 1;         % Enable Complex Vector Decoupling
ActFF = 0;         % Enable Feedback Forward Decoupling

Ts   = 1e-6;       % Fundamental sample time            [s]
fsw  = 5e3;       % PMSM drive switching frequency fpwm = 10kHz Tpwm = 1/fsw = 100us     [Hz] 2.5kHz
Tsi  = 1/fsw/2;    % Sample time for inner control loop [s] 单采样单更新时去掉/2
Tso  = 2*Tsi;      % Sample time for outer control loop [s]
Tpwm = 1/fsw;


% Ⅱ型系统整定方法 % Kp = 0.6*Ls/sigma;  Ki = Kp/5sigma = 0.6*Ls/(5*sigma*sigma);
%  Kp_id = 0.6*Ld/sigma;                  % Proportional gain id controllerLq 
%  Ki_id = 0.6*Ld/(5*sigma*sigma);        % Integrator gain id controller        
%  Kp_iq = 0.6*Lq/sigma;                  % Proportional gain iq controller      
%  Ki_iq = 0.6*Lq/(5*sigma*sigma);        % Integrator gain iq controller  

% Ⅱ型系统整定方法 
Vs = Vnom/1.732/Rs; Tl=Ld/Rs; sigma=Tsi; 
TR=5*sigma;
Kp_id=0.6*Tl/Vs/sigma;
Ki_id=Kp_id/TR;
Kp_iq=Kp_id;
Ki_iq=Ki_id;  

% Ⅰ型系统整定方法
% Kp_id = Ld/(3*Tpwm);        % Proportional gain id controllerLq 
% Ki_id = Rs/(3*Tpwm);        % Integrator gain id controller        
% Kp_iq = Lq/(3*Tpwm);        % Proportional gain iq controller      
% Ki_iq = Rs/(3*Tpwm);        % Integrator gain iq controller  

% 滤波器时间常数为4*sigma，一般取等效惯性环节，即1/(1+4*sigma*s)，再进行离散化。
G  = tf(1,[4*sigma, 1]);
Gd = c2d(G, Tsi);
[num, den] = tfdata(Gd, 'v');
down1 = den(1);
down2 = den(2);
up    = num(2);

% fpwm = fsw = 10kHz, f_n = (n*2*pi/60)*p/(2*pi) = n*(1/15), we = (n*2*pi/60)*p
% 载波比 = fpwm/f_n

%% Zero-Cancellation Transfer Functions
numd_id = Tsi/(Kp_id/Ki_id);
dend_id = [1 (Tsi-(Kp_id/Ki_id))/(Kp_id/Ki_id)];
numd_iq = Tsi/(Kp_iq/Ki_iq);
dend_iq = [1 (Tsi-(Kp_iq/Ki_iq))/(Kp_iq/Ki_iq)];

numd_omega = Tso/(Kp_omega/Ki_omega);
dend_omega = [1 (Tso-(Kp_omega/Ki_omega))/(Kp_omega/Ki_omega)];

%% Current References
load ee_ipmsm_35kW_ref_idq;
