function [edges] = addColors(g_mag, g_dir, thresh)
    [r,c] = size(g_mag);
    temp = g_mag >= thresh;
    %black
    edges = zeros(r,c,3);
    %red
    edges(:,:,1) = edges(:,:,1) + 255*(temp .* (g_dir == 0));
    %green
    edges(:,:,2) = edges(:,:,2) + 255*(temp .* (g_dir == 45));
    %blue
    edges(:,:,3) = edges(:,:,3) + 255*(temp .* (g_dir == 90));
    %yellow
    edges(:,:,1) = edges(:,:,1) + 255*(temp .* (g_dir == 135));
    edges(:,:,2) = edges(:,:,2) + 255*(temp .* (g_dir == 135));
end