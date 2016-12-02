function [row_diffs, col_diffs] = rowColDiffCalc(bw_smooth)
    [r,c] = size(bw_smooth);
    row_diffs = zeros(r,c);
    col_diffs = zeros(r,c);
    row_diffs(2:r-1,2:c-1)=bw_smooth(3:r,2:c-1)-bw_smooth(1:r-2,2:c-1);
    col_diffs(2:r-1,2:c-1)=bw_smooth(2:r-1,3:c)-bw_smooth(2:r-1,1:c-2);
end