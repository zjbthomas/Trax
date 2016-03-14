%% Clear
close all;
clear all;
clc;

%% Create two FPGA
p1 = FPGA(32, 0); % Equal to send '-W'
p2 = FPGA(32, 1); % Equal to send '-B'

%% Create a board
board = zeros(33, 33);

%% Playing
p1 = p1.singleStep('@0+');
