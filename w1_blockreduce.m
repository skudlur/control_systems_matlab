% Block diagram reduction
clc;
clear;
close all;

% Reduce the block diagram to either series, parallel or feedback
g1 = 5;
g2 = tf([1], [1 1]);
g3 = tf([1], [1 2]);
g4 = 2;
g5 = tf([1], [1 3]);
g6 = tf(1,1);

h1 = 1;
h2 = 1;

g2f = feedback(g2,h1,-1);
g1s = series(g1, g2f);
g3s = series(g3,g1s);
gp1 = parallel(g4,g5);
gp2 = parallel(g6,gp1);
gts = series(g3s,gp2);
gt = feedback(gts, h2, -1)
