function decision = decision_suspension(mask_side, min_susp_pick_up)
    aux = 0;
    new_bot = 0;
    sum_susp = 0;
    susp_marker = min_susp_pick_up;
    decision = 0;
    
    c = 0;
    for i=1:size(mask_side,1)
        img = mask_side;
        [height, width, top, bottom, left, right] = tam_med(img);
        x_mid = round((right-left)/2+left);
        aux = img(i, x_mid);
        if((aux ~= 0) && (c == 0))
            c = 1;
        end
        if ((aux == 0) && (c == 1))
            c = 2;
            new_bot = i;
            if (bottom - new_bot > min_susp_pick_up*0.95)
                decision = 1;
            end
        end
    end
end