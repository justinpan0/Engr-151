function [g_mag, g_dir] = gradientCalc(row_diffs, col_diffs)
    g_mag = sqrt((row_diffs).^2 + (col_diffs).^2);
    g_dir = 45 * round(atand(row_diffs./col_diffs)/45);
    g_dir(isnan(g_dir)) = 90;
    g_dir = g_dir + 180 * (g_dir < 0);
end
