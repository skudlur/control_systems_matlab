% Program to get transfer function in parallel

clc;
clear;
close all;

n1 = input("Enter the first numerator's coefficients in '[]':" );
d1 = input("Enter the first denominator's coefficients in '[]':" );

n2 = input("Enter the second numerator's coefficients in '[]':" );
d2 = input("Enter the second denominator's coefficients in '[]':" );

p1 = tf(n1, d1);
p2 = tf(n2, d2);


% Using parallel function to get the simplified transfer function
resPara = parallel(p1, p2);
resPara