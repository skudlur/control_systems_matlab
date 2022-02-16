% Method no.2
clc;
clear;
close all;

s = tf('s');
g1 = s/(s^2 + 2*s + 5);
g2 = s/(s+2);
h = 1/(s+3);

g3 = series(g1,g2);
feedback(g3,[1/(s+3)]) % Default is negative feedback
