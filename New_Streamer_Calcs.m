%% Drogue Calcs 
clc, clear

fprintf('      ~~~~~~DROGUE DEPLOYMENT INFO~~~~~~    \n' );
fprintf('\n' );

A_inch = 2*56; %inches
A = A_inch*0.0254; % meters

% Velocity 
g = 9.81; %gravity
p = 1225;%density of air
m_lb = 17; % mass in lb
m = m_lb*0.453592; % mass in kg
m_g = m*1000; %grams
Cd = 0.08; % Drag of parachute

V = sqrt((m_g*g*2)/(p*A*Cd));

V_ft = V*3.28;


fprintf('The velocity with the drogue parachute is %f ft/s',V_ft)

% Descent Time
Apogee = 4900; %ft
Main = 600;
T_d = (Apogee-Main)/V_ft; % Time

fprintf('\n' );
fprintf('\n' );
fprintf('The TIME it takes to reach main deployment from apogee is %f seconds',T_d)

% kinetic Energy 

K = (1/2)*(m_lb/32.2)*V_ft^2;

fprintf('\n' );
fprintf('\n' );
fprintf('The kinetic energy of the rocket is %f ft-lb',K)

%% Main Calcs 
fprintf('\n' );
fprintf('\n' );
fprintf('      ~~~~~~MAIN DEPLOYMENT INFO~~~~~~    \n' );
fprintf('\n' );

% Velocity Amount

m_lb = 17;
K = 101; %n-m
m = m_lb*0.453592; %kg

V = sqrt((2*K)/m);

V_ft = V*3.28;

fprintf('The descent velocity for maximum kinetic energy is %f ft/s',V_ft)

% Parachute Sizing
g = 9.81; %gravity
p = 1225;%density of air
m_g = m*1000; %grams
Cd = 1.55; %Drag of Parachute 

S = ((2*g*m_g)/(p*Cd*V^2));

D = sqrt((4*S)/pi);

D_inch = D*39.3701;

fprintf('\n' );
fprintf('\n' );
fprintf('The diameter for the main parachute must be %f inches',D_inch)

% Descent Time for Main 

Main = 600; %ft

T_m = Main/V_ft; %Descent Time

fprintf('\n' );
fprintf('\n' );
fprintf('The descent TIME from %f feet is %f',Main,T_m)

%Total Time
T = T_m+T_d;

fprintf('\n' );
fprintf('\n' );
fprintf('      ~~~~~~TOTAL DESCENT TIME~~~~~~    \n' );
fprintf('\n' );
fprintf('The total descent time is %f seconds',T)

