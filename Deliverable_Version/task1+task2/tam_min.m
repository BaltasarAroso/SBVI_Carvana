function [min_h, min_w] = tam_min(imgs)

[x1,y1] = size(imgs{1});
c = 0;

height = zeros(size(imgs{1},2),1);
width = zeros(size(imgs{1},1),1);

top_line = 0;
bottom_line = 0;
left_line = 0;
right_line = 0;

min_h = size(imgs{1},1);
min_w = size(imgs{1},2);
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
    height(j) = abs(top_line - bottom_line);
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
    width(j) = abs(left_line - right_line);
end
    for i=1:size(imgs{1},1)
        if (height(i) == 0 || width(i) == 0)
            continue;
        else
            if (height(i) < min_h)
                min_h = height(i);
            end
            if (width(i) < min_w)
                min_w = width(i)
            end
        end
    end

end