function [flips] = coinFlip(number)
flips = rand(1,number) <= 0.5;
