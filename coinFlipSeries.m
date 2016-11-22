function [flipSeries]=coinFlipSeries(flipsPerSeries,series)

flipSeries = sum(rand(flipsPerSeries,series)<=0.5);