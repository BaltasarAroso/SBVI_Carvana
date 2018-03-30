function [max_h, max_w] = tam_max(imgs)

[x1,y1] = size(imgs{1});
c = 0;

top_line = 0;
bottom_line = 0;
left_line = 0;
right_line = 0;

max_h = 0;
max_w = 0;
for j = 1:size(imgs,2)
    for i = 1:x1
        img = imgs{j};
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
    height = abs(top_line - bottom_line);
    if (height > max_h)
        max_h = height;
    end
    c = 0;
    for i = 1:y1
        img = imgs{j};
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
    if(right_line == 0) 
        right_line = x1; % pick up that goes beyond the image length
    end
    width = abs(left_line - right_line);
    if (width > max_w)
        max_w = width;
    end
end
end