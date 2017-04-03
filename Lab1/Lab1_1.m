%% Motor model without a load torque
clear;
clc;

%% Motor Parameters
Kb = 0.1;
Kt = 0.1;
J = 0.5;
B = 0.05;
R = 0.1;
L = 0.8;
V= 12;
%% Motor Transfer Function
s = tf('s');
Motor1 = Kt / ((J * s + B) * (R + L * s) + (Kb * Kt));

%% Give a step input to the motor.
step(V * Motor1)                                                % Speed response in radians/sec
