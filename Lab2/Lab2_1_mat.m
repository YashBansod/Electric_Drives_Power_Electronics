%% Motor model without a load torque in matlab
clear;
clc;

%% Motor Parameters
Kb = 0.01;
Kt = 0.01;
J = 0.01;
B = 0.1;
R = 1;
L = 0.5;
V = 220;

%% Motor Transfer Function
s = tf('s');
Motor = Kt / ((J * s + B) * (R + L * s) + (Kb * Kt))

%% Give a step input to the motor.
step(V * Motor)                                                                     % Speed response in radians/sec

