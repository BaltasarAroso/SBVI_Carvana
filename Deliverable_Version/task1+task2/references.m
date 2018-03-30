function [max_area, max_axis, max_formula, max_box, min_area] = references(mask_class_side)
    min_area = 2000000;
    min_axis = 10;
    min_formula = 100;
    min_box = 2000000;

    max_area = 0;
    max_axis = 0;
    max_formula = 0;
    max_box = 0;
    
    for i=1:size(mask_class_side, 2)
        reg = regionprops(mask_class_side{i}, 'Area', 'BoundingBox', 'Perimeter', 'Eccentricity');
        if (reg(1).Area(1) < min_area)
            min_area = reg(1).Area;
        end
        if (reg(1).Area(1) > max_area)
            max_area = reg(1).Area;
        end

        axis = reg(1).BoundingBox(4) / reg(1).BoundingBox(3);
        if (axis < min_axis)
            min_axis = axis;
        end
        if (axis > max_axis)
            max_axis = axis;
        end

        formula = reg(1).Perimeter(1)*reg(1).Perimeter(1) / reg(1).Area(1);
        if (formula < min_formula)
            min_formula = formula;
        end
        if (formula > max_formula)
            max_formula = formula;
        end

        box = reg(1).BoundingBox(4) * reg(1).BoundingBox(3);
        if (box < min_box)
            min_box = box;
        end
        if (box > max_box)
            max_box = box;
        end
    end