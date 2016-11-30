function [quant]=quantizeImage(img)
    quant=uint8((img < 64)*32 + ((64 <= img)&(img < 128))*76 + ((128 <= img)&(img < 192))*160 + ((192 <= img)&(img < 256))*224);
end