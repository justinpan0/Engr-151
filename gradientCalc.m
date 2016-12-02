function [g_mag, g_dir] = gradientCalc(row_diffs, col_diffs)
    [r c] = size(row_diffs);
    g_mag = sqrt(row_diffs + col_diffs);
    g_dir = 45 * round(atand(row_diffs./col_diffs)/45);
    g_dir(isnan(g_dir)) = 90;
end