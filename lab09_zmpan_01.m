load('image_data.mat')

% All the matrix are stored in the corresponding ans_n;

ans1 = applyThreshold(img1, 150);
% imshow(ans1)

ans2 = applyThreshold(img2, 150);
% imshow(ans2)

ans3 = applyThreshold(img3, 150);
% imshow(ans3)

ans4 = applyThreshold(img4, 150);
% imshow(ans4)
