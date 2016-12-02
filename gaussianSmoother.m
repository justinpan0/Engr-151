function [bw_smooth] = gaussianSmoother(bw_im)
    [r,c]=size(bw_im);
    bw_smooth = zeros(r,c);
    bw_smooth(2:r-1,2:c-1) = (10*bw_im(1:r-2,1:c-2)+27*bw_im(2:r-1,1:c-2)+...
        10*bw_im(3:r,1:c-2)+27*bw_im(1:r-2,2:c-1)+10*bw_im(1:r-2,3:c)+...
        27*bw_im(3:r,2:c-1)+10*bw_im(3:r,3:c)+27*bw_im(2:r-1,3:c)+...
        74*bw_im(2:r-1,2:c-1))/222;
    bw_smooth(1,:) = bw_im(1,:);
    bw_smooth(:,1) = bw_im(:,1);
    bw_smooth(r,:) = bw_im(r,:);
    bw_smooth(:,c) = bw_im(:,c);
    %bw_smooth = uint8(bw_smooth);
end