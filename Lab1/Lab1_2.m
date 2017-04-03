%% Motor model with a load torque
clear;
clc;

%% Motor Parameters
Kb = 0.8;
Kt = 0.8;
J = 0.0167;
B = 0.01;
R = 0.5;
L = 0.003;
Tl = 0.12;                                                                          % in terms of angular velocity(w) 
V = 220;

%% Motor Transfer Function with the load torque
s = tf('s');
Motor1 = Kt / ((J * s + B + 0.12) * (R + L * s) + (Kb * Kt))
step(V * Motor1 * (60 / (2 * pi)))                                                  % Speed response with load in RPM

%% Motor Transfer Function without the load torque
hold on
Motor2 = Kt / ((J * s + B) * (R + L * s) + (Kb * Kt))
step(V * Motor2 * (60 / (2 * pi)))                                                  % Speed response without load in RPM
