clc
clear
close all;

%%%%% Iniciar compactos  %%%%%
carros(:,:,1)=im2double(rgb2gray(imread('../compacto/2faf504842df_09.jpg')));
carros(:,:,2)=im2double(rgb2gray(imread('../compacto/4b74275babf7_09.jpg')));
carros(:,:,3)=im2double(rgb2gray(imread('../compacto/47ea8f25c948_09.jpg')));
carros(:,:,4)=im2double(rgb2gray(imread('../compacto/898339fab87a_09.jpg')));


%%%%Iniciar pick_up %%%%
carros(:,:,5)=im2double(rgb2gray(imread('../pick_up/0ed6904e1004_09.jpg')));
carros(:,:,6)=im2double(rgb2gray(imread('../pick_up/3cb21125f126_09.jpg')));
carros(:,:,7)=im2double(rgb2gray(imread('../pick_up/0795e132d090_09.jpg')));

%%%%Iniciar sedan  %%%%
carros(:,:,8)=im2double(rgb2gray(imread('../sedan/1ae8a68a40e4_09.jpg')));
carros(:,:,9)=im2double(rgb2gray(imread('../sedan/2ea62c1beee7_09.jpg')));
carros(:,:,10)=im2double(rgb2gray(imread('../sedan/5fb012d30fd9_09.jpg')));
carros(:,:,11)=im2double(rgb2gray(imread('../sedan/7fbc761387f3_09.jpg')));
carros(:,:,12)=im2double(rgb2gray(imread('../sedan/34b0c08544a5_09.jpg')));

%%%%% Iniciar SUV  %%%%%
carros(:,:,13)=im2double(rgb2gray(imread('../SUV/3d7a1030deeb_09.jpg')));
carros(:,:,14)=im2double(rgb2gray(imread('../SUV/4fc2470c0f7b_09.jpg')));
carros(:,:,15)=im2double(rgb2gray(imread('../SUV/54ee69d7d5e5_09.jpg')));
carros(:,:,16)=im2double(rgb2gray(imread('../SUV/630335e37f40_09.jpg')));


%%%%% Iniciar mask compactos  %%%%%
mask(:,:,1)= imread('../compacto/2faf504842df_09_mask.gif');
mask(:,:,2)= imread('../compacto/4b74275babf7_09_mask.gif');
mask(:,:,3)= imread('../compacto/47ea8f25c948_09_mask.gif');
mask(:,:,4)= imread('../compacto/898339fab87a_09_mask.gif');

%%%%Iniciar mask pick_up %%%%
mask(:,:,5)= imread('../pick_up/0ed6904e1004_09_mask.gif');
mask(:,:,6)= imread('../pick_up/3cb21125f126_09_mask.gif');
mask(:,:,7)= imread('../pick_up/0795e132d090_09_mask.gif');

%%%%Iniciar mask sedan  %%%%
mask(:,:,8)= imread('../sedan/1ae8a68a40e4_09_mask.gif');
mask(:,:,9)= imread('../sedan/2ea62c1beee7_09_mask.gif');
mask(:,:,10)= imread('../sedan/5fb012d30fd9_09_mask.gif');
mask(:,:,11)= imread('../sedan/7fbc761387f3_09_mask.gif');
mask(:,:,12)= imread('../sedan/34b0c08544a5_09_mask.gif');

%%%%% Iniciar mask SUV  %%%%%
mask(:,:,13)= imread('../SUV/3d7a1030deeb_09_mask.gif');
mask(:,:,14)= imread('../SUV/4fc2470c0f7b_09_mask.gif');
mask(:,:,15)= imread('../SUV/54ee69d7d5e5_09_mask.gif');
mask(:,:,16)= imread('../SUV/630335e37f40_09_mask.gif');

%%%%BRANDS %%%%
brands(:,:,1)=im2double(rgb2gray(imread('brands/mini_preto.jpg')));
brands(:,:,2)= im2double(rgb2gray(imread('brands/bmw_preto.jpg')));
brands(:,:,3)=im2double(rgb2gray(imread('brands/chevrolet_preto.jpg')));
brands(:,:,4)=im2double(rgb2gray(imread('brands/ford_preto.jpg')));
brands(:,:,5)=im2double(rgb2gray(imread('brands/honda_preto.jpg')));
brands(:,:,6)=im2double(rgb2gray(imread('brands/jaguar_preto.jpg')));
brands(:,:,7)= im2double(rgb2gray(imread('brands/audi_preto.jpg')));


%% Iniciar compactos %%
mask_side(:,:,1) = imread('../compacto/2faf504842df_05_mask.gif'); % side
mask_side(:,:,2) = imread('../compacto/4b74275babf7_13_mask.gif'); % side
mask_side(:,:,3) = imread('../compacto/47ea8f25c948_05_mask.gif'); % side
mask_side(:,:,4) = imread('../compacto/898339fab87a_05_mask.gif'); % side

mask_comp_side = {mask_side(:,:,1), mask_side(:,:,2), mask_side(:,:,3), mask_side(:,:,4)};

%% Iniciar Pick Up %%
mask_side(:,:,5) = imread('../pick_up/0ed6904e1004_05_mask.gif'); % side
mask_side(:,:,6) = imread('../pick_up/3cb21125f126_13_mask.gif'); % side
mask_side(:,:,7) = imread('../pick_up/0795e132d090_05_mask.gif'); % side

mask_pick_side = {mask_side(:,:,5),mask_side(:,:,6),mask_side(:,:,7)};

%% Iniciar Sedan %%
mask_side(:,:,8) = imread('../sedan/1ae8a68a40e4_13_mask.gif'); % side
mask_side(:,:,9) = imread('../sedan/2ea62c1beee7_05_mask.gif'); % side
mask_side(:,:,10) = imread('../sedan/5fb012d30fd9_13_mask.gif'); % side
mask_side(:,:,11) = imread('../sedan/7fbc761387f3_05_mask.gif'); % side
mask_side(:,:,12) = imread('../sedan/34b0c08544a5_05_mask.gif'); % side

mask_sed_side = {mask_side(:,:,8), mask_side(:,:,9), mask_side(:,:,10), mask_side(:,:,11), mask_side(:,:,12)};

%% Iniciar SUV %%
mask_side(:,:,13) = imread('../SUV/3d7a1030deeb_05_mask.gif'); % side
mask_side(:,:,14) = imread('../SUV/4fc2470c0f7b_05_mask.gif'); % side
mask_side(:,:,15) = imread('../SUV/54ee69d7d5e5_05_mask.gif'); % side
mask_side(:,:,16) = imread('../SUV/630335e37f40_05_mask.gif'); % side

mask_suv_side = {mask_side(:,:,13), mask_side(:,:,14), mask_side(:,:,15), mask_side(:,:,16)};

%% Fourth Hypothesis %%

[max_area_sed, max_axis_sed, max_formula_sed, max_box_sed, min_area_sed] = references(mask_sed_side);
[max_area_comp, max_axis_comp, max_formula_comp, max_box_comp, min_area_comp] = references(mask_comp_side);

maxCorrValue = zeros(7,16,1);
index = zeros(16,1);
height = zeros(16,1);

for num =1 :16
    I = carros(:,:,num);
    M = mask(:,:,num);
    S = mask_side(:,:,num);
    
    reg = regionprops(M, 'BoundingBox');
    left = reg.BoundingBox(1);
    top = reg.BoundingBox(2);
    width = reg.BoundingBox(3);
    height = reg.BoundingBox(4);
    
    reg = regionprops(S, 'Area', 'BoundingBox', 'Perimeter', 'Orientation', 'Eccentricity');
    axis = reg.BoundingBox(4) / reg.BoundingBox(3);
    formula = reg.Perimeter*reg.Perimeter / reg.Area;
    box = reg.BoundingBox(4) * reg.BoundingBox(3);
    
    if (formula > max_formula_sed*1.2)
        result = sprintf('../pick-Up');
    else
        if (axis > max_axis_sed*1.04)
            if (reg.Area > max_area_comp*1.2)
                result = sprintf('../SUV');
            else
                result = sprintf('../compacto');
            end
        else
            result = sprintf('../sedan');
        end
    end
    
    if(strcmp(result,'../compacto'))
        k1 = 2/5;
        k2 = 1/3;
        k3 = 1/5;
        I_cropped = imcrop(I, [left+width*k1 top+height*k2  width*k3 height*k3]);
        I_cropped = adapthisteq(I_cropped);
%         figure; imshow(I_cropped)
        I2 = imfilter(I_cropped, fspecial('log', 5, 0.4), 'replicate');   
%         figure; imshow(I2)
        
    elseif(strcmp(result,'../sedan'))
        k1 = 2/5;
        k2 = 1/3;
        k3 = 1/5;
        I_cropped = imcrop(I, [left+width*k1 top+height*k2  width*k3 height*k3]);
        I_cropped = adapthisteq(I_cropped);
%         figure; imshow(I_cropped)
        I2 = imfilter(I_cropped, fspecial('log', 5, 0.4), 'replicate');   
%         figure; imshow(I2)
        
    elseif(strcmp(result,'../SUV'))
        k1 = 2/5;
        k2 = 1/4;
        k3 = 1/4;
        I_cropped = imcrop(I, [left+width*k1 top+height*k2  width*k3 height*k3]);
        I_cropped = adapthisteq(I_cropped);
%         figure; imshow(I_cropped)
        I2 = imfilter(I_cropped, fspecial('log', 5, 0.4), 'replicate');   
%         figure; imshow(I2)

    else    
        k1 = 1/3;
        k2 = 4/9;
        k3 = 1/3;
        I_cropped = imcrop(I, [left+width*k1 top+height*k2  width*k3 height*k3]);
        I_cropped = adapthisteq(I_cropped);
%         figure; imshow(I_cropped)
        I2 = imfilter(I_cropped, fspecial('log', 5, 0.4), 'replicate');   
%         figure; imshow(I2)
    end

    for i = 1:7  
        B = imfilter(brands(:,:,i), fspecial('log', 5, 0.5), 'replicate');
%         figure; imshow(B)    

       correlationOutput = normxcorr2(B,I2);
%        figure;surf(correlationOutput),shading flat
       maxCorrValue(i,num) = max(abs(correlationOutput(:)));
       
    end      
    
end    

%  for i = 1:7   
%      max_brand(i)=0;
%      max_brand(i) = mean(maxCorrValue(i,:));  
%  end

for num = 1:16    
    maximo = 0;
    for j=1:7
      div(j, num) = maxCorrValue(j,num);
     if (div(j, num) > maximo)
         maximo = div(j, num);
         index(num) = j;
     end
    end
    
    if( index(num) == 1)
        fprintf('%d %d Mini\n', num, index(num));
    elseif ( index(num) == 2)
        fprintf('%d %d BMW\n', num, index(num));
    elseif ( index(num) == 3)
        fprintf('%d %d Chevrolet\n', num, index(num));
    elseif ( index(num) == 4)
        fprintf('%d %d Ford\n', num, index(num));
    elseif ( index(num) == 5)
        fprintf('%d %d Honda\n', num, index(num));
    elseif ( index(num) == 6)
        fprintf('%d %d Jaguar\n', num, index(num));
    elseif ( index(num) == 7)
        fprintf('%d %d Audi\n', num, index(num));
    end
end





