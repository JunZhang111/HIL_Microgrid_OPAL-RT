%   Set the RT simulation timestep here
Ts =50e-6 * 5*4;
% Ts =50e-6;
% Ts =2.5e-7;
%   Set the simulation sample time
Ts_simulation = 250e-9;

%   Source Voltage
U01  = 100;
%   Inductor Value
Li   = 100e-3;
%   Resistor Value
Ri   = 10;
%   IGBT//Diode
Ron  = 1e-3;
Rs   = 1e5;

%   Carrier Frequency
Fc   = 5000;
%   Output Frequency
Fout = 50;
%   Modulation Index
ModulationIndex = 0.95;

% wn
fn=60;
wn=2*pi*fn;

%% data flow from prototype model eHs test

%(Pokagu 2007)
%Overall system parameters. Sec. IV
Vn=220*sqrt(2);
fn=60;
wn=2*pi*fn;
%Inverter (Table I) 
Lf=1.35e-3;
Cf=50e-6;
Rf=0.1;
Lc=0.35e-3;
Rc=0.03;
wc=31.41;
% Droop Control 
mp=9.4e-5;
nq=1.3e-3; 
%% Current Controller
kpi=0.1;
%Voltage Controller
Kpv=0.01;
Kiv=450;
%Current Controller
Kpc=8;
Kic=16e3+500;
F=0.75;
%Line Parameters
R12=0.8;
L12=3.6e-3;
R23=0.4;
L23=1.8e-3;
R34=0.7;
L34=1.5e-3;
%Load parameters
Rload1=50;
Lload1=0.1;
Rload3=100;
Lload3=0.2;
%% Power sharing controller
w0=wn;

%%
Cf_filter = 24.43e-5;
R_filter =0.1 ;
L_filter = 1.8e-3;

%
LfI_1 = 1.5e-3;
Cf_1= 5e-6;
Lfg_1 = 1e-3;

%%
%% Current Controller
kpi=0.9;
%Voltage Controller
Kpv=0.05;
Kiv=390;
%Current Controller
Kpc=10.5;
Kic=16e3;
F=0.75;
%%
myCf = 5e-4;
myLf = 1.8e-3;
myLc = Lc;
Cf= 5e-4;
Udc = 400;
%%
H = tf(31.41*0.4,[1 31.41*0.4]);
discreteFilterc = c2d(H,Ts);
FilterNumerator = discreteFilterc.Numerator{1}(2);
FilterDenominator = discreteFilterc.Denominator{1};
%%
% Kpv=5;
% Kiv=0;
% Kpc=10;
% Kic=0;
% kpi=0.9;
% %Voltage Controller
% Kpv=1.2;
% Kiv=10;
% %Current Controller
% Kpc=25;
% Kic=20000;
%%
Cf = 30e-6;
Lf = 3e-3;
Lc = 0.5e-3;
Fre_PWM = 10e3;
%Voltage Controller
Kpv=0.15;
Kiv=390;
%Current Controller
Kpc=5;
Kic=16e3;
F=0.75;
%% 2022/12/29 copy from oneDG_LCL
% Rf=0.1;
Lf=2.5e-3;
% Rf1=0.1;
Lf1=1.8e-3;
% %Cf= 11.29e-6;
Cf= 2.5e-6;
% Lf=3e-3;
% Lf1=0.5e-3;
Rd = 0.8;
%Voltage Controller
Kpv=0.15;
Kiv=390;
%Current Controller
Kpc=5;
Kic=16e3;

VU=300; %%%Voltage Limits
VL=150;

Udc = 650;

% Udc = 650;
% Cf = 9.5941e-05;
% Lf = 30e-04;
% L2 = 1.8335e-04;
%% 09/23/2024
% Rf=0.1;
Lf=3e-3;
% Rf1=0.1;
Lf1=1e-3;
% %Cf= 11.29e-6;
Cf= 25e-6;
% Lf=3e-3;
% Lf1=0.5e-3;
Rd = 0.8;


L2 = 1.8e-3;
%%
% L2 = 1.8e-3;
% Cf = 2.5e-5;
% Lf = 2.5e-3;
% Cf= 35e-6;