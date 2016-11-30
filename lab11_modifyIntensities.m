orig_img=imread('pencils.jpg');
[rows,columns,intensity]=size(orig_img);
% Step 1
figure1(1:rows/4,1:columns,1:intensity)=orig_img(1:rows/4,1:columns,1:intensity)-100;
figure1(rows/4+1:rows/2,1:columns,1:intensity)=orig_img(rows/4+1:rows/2,1:columns,1:intensity)-50; 
figure1(rows/2+1:3*rows/4,1:columns,1:intensity) =orig_img(rows/2+1:3*rows/4,1:columns,1:intensity);
figure1(3*rows/4+1:rows,1:columns,1:intensity)=orig_img(3*rows/4+1:rows,1:columns,1:intensity)+50;
subplot(2,2,1);
imshow(figure1)

% Step 2
figure1(1:rows,1:columns/3,1:intensity)=figure1(1:rows,1:columns/3,1:intensity)-100;
figure1(1:rows,2*columns/3+1:columns,1:intensity)=figure1(1:rows,2*columns/3+1:columns,1:intensity)+100;
subplot(2,2,2);
imshow(figure1)

% Step 3
R=figure1(1:rows,1:columns,1);
G=figure1(1:rows,1:columns,2);
B=figure1(1:rows,1:columns,3);
figure1(1:rows,1:columns,1)=G;
figure1(1:rows,1:columns,2)=B;
figure1(1:rows,1:columns,3)=R;
subplot(2,2,3);
imshow(figure1)