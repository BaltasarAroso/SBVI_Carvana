function dome = decision_dome(mask_side)
    aux = 0;
    left_dome = 0;
    right_dome = 0;
    dome = 0;
    
    c = 0;
    for i=1:size(mask_side,2)
        img = mask_side;
        [height, width, top, bottom, left, right] = tam_med(img);
        y_top = round(top + height*1/6);
        aux = img(y_top, i);
        if((aux ~= 0) && (c == 0))
            left_dome = i;
            c = 1;
        end
        if ((aux == 0) && (c == 1))
            right_dome = i;
            c = 2;
            if (right_dome - left_dome > 0.55*width) % e um suv
                dome = 1;
            end
        end
    end
end