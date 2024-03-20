I = imread('cameraman.tif');
imtool(I);
% top left: 174, 97
% bottom right: 220, 175
% pixel awal dari cropped image dari original image

I2 = imread('cropped_building.png');
imshow(I2);

x1 = 174; x2 = 220; y1 = 97; y2 = 175;
xmin = x1; ymin = y1; width = x2-x1; height = y2-y1;
I3 = imcrop(I, [xmin, ymin, width height]);
imshow(I3);

I_big1 = imresize(I, 3);
figure, imshow(I), title('Original Image');
figure, imshow(I_big1), title('Enlarged Image with bicubic interpolation');

I_big2 = imresize(I, 3, "nearest");
I_big3 = imresize(I, 3, "bilinear");
figure, imshow(I_big2), title('Resize with nearest-neighbor interpolation');
figure, imshow(I_big3), title('Resized with bilinear interpolation');



I_rows = size(I, 1);
I_cols = size(I, 2);
I_sm1 = I(1:2:I_rows, 1:2:I_cols);
figure; imshow(I);
figure, imshow(I_sm1);


I_sm2 = imresize(I, 0.5, "nearest");
I_sm3 = imresize(I, 0.5, "bilinear");
I_sm4 = imresize(I, 0.5, "bicubic");
figure; subplot(1,3,1), imshow(I_sm2); title('i sm 2')
subplot(1,3,2), imshow(I_sm3); title('i sm 3')
subplot(1,3,3), imshow(I_sm4); title('i sm 4')

clear; clc; close all;
I = imread('cameraman.tif');
J = flipud(I);
K = fliplr(I);
subplot(1,3,1), imshow(I); title('ori')
subplot(1,3,2), imshow(J); title('flip ud')
subplot(1,3,3), imshow(K); title('flip lr')



close all; clc; clear;
I = imread('eight.tif');
I_rot = imrotate(I, 35);
imshow(I_rot);

I_rot_clock = imrotate(I, -35);
imshow(I_rot_clock);

I_rot2= imrotate(I, 35, "bilinear");
imshow(I_rot2);

I_rot3 = imrotate(I, 35, "bilinear", "crop");
figure, imshow(I_rot3);


