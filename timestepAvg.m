clc
clear all
close all
format long

fname = "./serial/post/Nx1/timestep.txt";
tab = readtable(fname);

dt = tab.(3);
mean(dt)
