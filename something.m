%% Limpeza inicial
close all;
clc;
clear;

%% Iniciar compactos
carros(:,:,1)=im2double(rgb2gray(imread('compacto/2faf504842df_01.jpg')));
carros(:,:,2)=im2double(rgb2gray(imread('compacto/2faf504842df_05.jpg')));
carros(:,:,3)=im2double(rgb2gray(imread('compacto/2faf504842df_09.jpg')));
carros(:,:,4)=im2double(rgb2gray(imread('compacto/2faf504842df_11.jpg')));
carrosmask(:,:,1)=imread('compacto/2faf504842df_01_mask.gif');
carrosmask(:,:,2)=imread('compacto/2faf504842df_05_mask.gif');
carrosmask(:,:,3)=imread('compacto/2faf504842df_09_mask.gif');
carrosmask(:,:,4)=imread('compacto/2faf504842df_11_mask.gif');

I = carros(:,:,1);
figure
imshow(I)
title('I')

% [mserRegions, mserConnComp] = detectMSERFeatures(I, ...
%     'RegionAreaRange',[15000 25000],'ThresholdDelta', 4);
% 
% figure
% imshow(I)
% hold on
% plot(mserRegions, 'showPixelList', true,'showEllipses',false)
% title('MSER regions')
% hold off

%% Detect letters

% smoothed = imgaussfilt(I, 0.7);
figure
letters(:,:,1) = imbothat(I, strel('diamond', 45));
imshow(letters(:,:,1))
title('letters')
for i = 2:10
%     a = round(4.5);
    figure
    letters(:,:,i) = imdilate(letters(:,:,i-1), strel('disk', 2));
    letters(:,:,i) = imerode(letters(:,:,i), strel('disk', 2));
    imshow(letters(:,:,i))
    title('letters')
end

%% Canny on letters
% letters_final = edge(letters, 'Canny', [0.3 0.5]);
% im_quantized = imquantize(letters, multithresh(letters));
% figure
% imshow(im_quantized, [])
% title('im quantized')


%% Threshold
% figure
% subplot(2,1,1)
% letters_white = letters > 0.3;
% imshow(letters_white)
% title('letters white')
% 
% subplot(2,1,2)
% letters_black = letters < 0.6;
% letters_black2 = imcomplement(letters_black);
% imshow(letters_black2)
% title('letters black2')
% 
% figure
% letters_final = imsubtract(letters_white, letters_black2);
% imshow(letters_final)
% title('letters final')
