clc;
clear;
close all;

g1 = 5;
g2 = tf([1], [1 1]);
g3 = tf([1], [1 2]);
g4 = 2;
g5 = tf([1], [1 3]);
g6 = g2;
g7 = 1;
g8 = 1;

h1 = 1;
h2 = 1;
t1 = append(g1,g2,g3,g4,g5,g6,g7,g8,h1,h2);
t1