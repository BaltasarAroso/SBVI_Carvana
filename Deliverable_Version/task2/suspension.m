function [max_susp, min_susp] = suspension(mask_side)
    aux = 0;
    new_bot = 0;
    sum_susp = 0;
    max_susp = 0;
    min_susp = size(mask_side{1},2);
    
    for j=1:size(mask_side,2)
        c = 0;
        for i=1:size(mask_side{j},1)
            img = mask_side{j};
            [height, width, top, bottom, left, right] = tam_med(img);
            x_mid = round((right-left)/2+left);
            aux = img(i, x_mid);
            if((aux ~= 0) && (c == 0))
                c = 1;
            end
            if ((aux == 0) && (c == 1))
                c = 2;
                new_bot = i;
                if (bottom - new_bot < min_susp)
                    min_susp = bottom - new_bot;
                end
                if (bottom - new_bot > max_susp)
                    max_susp = bottom - new_bot;
                end
            end
        end
    end
end