function lab11_edgeDetect(img)
    img = img+32; % The enhancement is added to the original picture
    [rows,columns]=size(img);
    edge(2:rows-1,2:columns-1) = uint8(sqrt((img(1:rows-2,2:columns-1)-img(3:rows,2:columns-1)).^2+(img(2:rows-1,1:columns-2)-img(2:rows-1,3:columns)).^2));
    
    enhance = uint8((edge > 14)*64); % The enhancement is added b/c the image appears to be too dark
    edge = uint8(edge+enhance);
    
    subplot(1,2,1);
    imshow(uint8(img));
    subplot(1,2,2);
    imshow(edge);
end