% Control systems problem 1 to find transfer function
clc;
clear;
close all;

num = [1 1];
den = [1 4 4];
g = tf(num, den);

g1 = feedback(g,1);