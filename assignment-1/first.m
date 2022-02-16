% Program to find product of two polynomials

clc;
clear;
close all;

s = tf('s'); % Transfer function with gain s
in1 = input("Enter the first numerator: ");
in2 = input("Enter the second numerator: ");

out = in1 * in2;
out