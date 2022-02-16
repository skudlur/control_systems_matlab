% Program to get transfer function of a control system with a pzmap

clc;
clear;
close all;

s = tf('s'); % Transfer function with gain s

% Individual block gain values
g1 = 1/(s+10);
g2 = 1/(s+1);
g3 = (s^2+1)/(s^2+4.*s+4);
g4 = (s+1)/(s+6);
g5 = 1;
g6 = g5;

% Individual block feedback values
h1 = (s+1)/(s+2);
h2 = 2;
h3 = 1;

t1 = append(g1,g2,g3,g4,g5,g6,h1,h2,h3);

q = [1 5 -9
    2 1 -8
    3 2 -7
    4 3 0
    6 4 0
    7 4 0
    8 3 0
    9 4 0];

in = 5;
out = 6;

% Interconnect
t = connect(t1,q,in,out);

f = tf(t);
f

% Poles and zeros plotting

pzmap(f, 'r');
grid on;
xlabel("Real Axis");
xlim([-10.5 0.5]);
ylim([-5 5]);
ylabel("Imaginary Axis");
title("Poles and Zeros of Transfer Function");
sgtitle("Suhas KV | PES2UG20EC093");