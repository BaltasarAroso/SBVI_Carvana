function [height, width, med_top, med_bottom, med_left, med_right] = tam_med(imgs)

if (size(imgs, 1) > 1)          % se for uma imagem (varias linhas com pixeis)
    [x1,y1] = size(imgs);
    num_imgs = 1;
else                            % se for um vetor de imagens
    [x1,y1] = size(imgs{1});
    num_imgs = size(imgs,2);
end

c = 0;

top_line = 0;
bottom_line = 0;
left_line = 0;
right_line = 0;

top_tot = 0;
bottom_tot = 0;
left_tot = 0;
right_tot = 0;

med_top = 0;
med_bottom = 0;
med_left = 0;
med_right = 0;

for j = 1:num_imgs
    for i = 1:x1
        if (size(imgs,1) > 1)          % se for uma imagem (varias linhas com pixeis)
            img = imgs;
        else                            % se for um vetor de imagens
            img = imgs{j};
        end
        total_line = sum(img(i,:));
        if (total_line ~= 0) && (c == 0)
            top_line = i;
            c = 1;
        end
        if (total_line == 0) && (c ~= 0)
            bottom_line = i;
            c = 0;
        end
    end
    top_tot = top_tot + top_line;
    bottom_tot = bottom_tot + bottom_line;
    c = 0;
    for i = 1:y1
        if (size(imgs, 1) > 1)          % se for uma imagem (varias linhas com pixeis)
            img = imgs;
        else                            % se for um vetor de imagens
            img = imgs{j};
        end
        total_line = sum(img(:,i));
        if (total_line ~= 0) && (c == 0)
            left_line = i;
            c = 1;
        end
        if (total_line == 0) && (c ~= 0)
            right_line = i;
            c = 0;
        end
    end
    left_tot = left_tot + left_line;
    if(right_line == 0) 
        right_tot = right_tot + y1; % pick up that goes beyond the image length
    else
        right_tot = right_tot + right_line;
    end
end

med_top = top_tot / num_imgs;
med_bottom = bottom_tot / num_imgs;
med_left = left_tot / num_imgs;
med_right = right_tot / num_imgs;

height = med_bottom - med_top;
width = med_right - med_left;
end