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
        reg = regionprops(mask_class_side{i}, 'Area', 'BoundingBox', 'Perimeter', 'Orientation', 'Eccentricity');

        if (reg.Area < min_area)
            min_area = reg.Area;
        end
        if (reg.Area > max_area)
            max_area = reg.Area;
        end

        axis = reg.BoundingBox(4) / reg.BoundingBox(3);
        if (axis < min_axis)
            min_axis = axis;
        end
        if (axis > max_axis)
            max_axis = axis;
        end

        formula = reg.Perimeter*reg.Perimeter / reg.Area;
        if (formula < min_formula)
            min_formula = formula;
        end
        if (formula > max_formula)
            max_formula = formula;
        end

        box = reg.BoundingBox(4) * reg.BoundingBox(3);
        if (box < min_box)
            min_box = box;
        end
        if (box > max_box)
            max_box = box;
        end
    end