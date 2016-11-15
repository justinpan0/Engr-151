function res = applyThreshold(image, y)
    [rows, columns] = size(image);
    x = image > y;
    res = x*255;