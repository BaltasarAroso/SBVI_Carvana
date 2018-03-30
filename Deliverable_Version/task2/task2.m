clc;
clear;
close all;

%% Iniciar Pick Up %%
mask_pick_up3 = imread('../pick_up/0ed6904e1004_05_mask.gif'); % side
mask_pick_up7 = imread('../pick_up/3cb21125f126_13_mask.gif'); % side
mask_pick_up11 = imread('../pick_up/0795e132d090_05_mask.gif'); % side

mask_pick_side = {mask_pick_up3, mask_pick_up7, mask_pick_up11};

% [max_height_pick_side, max_width_pick_side] = tam_max(mask_pick_side);
% [min_height_pick_side, min_width_pick_side] = tam_min(mask_pick_side);
% [height, width, med_top, med_bottom, med_left, med_right] = tam_med(mask_pick_side);

% [max_susp_pick_up, min_susp_pick_up] = suspension(mask_pick_side);

% decision_suspension
% suspension_pick_up1 = decision_suspension(mask_pick_up3, min_susp_pick_up);
% suspension_pick_up2 = decision_suspension(mask_pick_up7, min_susp_pick_up);
% suspension_pick_up3 = decision_suspension(mask_pick_up11, min_susp_pick_up);

% decision_dome
% dome_pick_up1 = decision_dome(mask_pick_up3);
% dome_pick_up2 = decision_dome(mask_pick_up7);
% dome_pick_up3 = decision_dome(mask_pick_up11);

%% Iniciar compactos %%
mask_compact3 = imread('../compacto/2faf504842df_05_mask.gif'); % side
mask_compact7 = imread('../compacto/4b74275babf7_13_mask.gif'); % side
mask_compact11 = imread('../compacto/47ea8f25c948_05_mask.gif'); % side
mask_compact15 = imread('../compacto/898339fab87a_05_mask.gif'); % side

mask_comp_side = {mask_compact3, mask_compact7, mask_compact11, mask_compact15};

% [max_height_comp_side, max_width_comp_side] = tam_max(mask_comp_side);
% [min_height_comp_side, min_width_comp_side] = tam_min(mask_comp_side);
% [height, width, med_top, med_bottom, med_left, med_right] = tam_med(mask_comp_side);

% [max_susp_compact, min_susp_compact] = suspension(mask_comp_side);

% decision_suspension
% suspension_compact1 = decision_suspension(mask_compact3, min_susp_pick_up);
% suspension_compact2 = decision_suspension(mask_compact7, min_susp_pick_up);
% suspension_compact3 = decision_suspension(mask_compact11, min_susp_pick_up);
% suspension_compact4 = decision_suspension(mask_compact15, min_susp_pick_up);

% decision_dome
% dome_compact1 = decision_dome(mask_compact3);
% dome_compact2 = decision_dome(mask_compact7);
% dome_compact3 = decision_dome(mask_compact11);
% dome_compact4 = decision_dome(mask_compact15);

%% Iniciar Sedan %%
mask_sedan3 = imread('../sedan/1ae8a68a40e4_13_mask.gif'); % side
mask_sedan7 = imread('../sedan/2ea62c1beee7_05_mask.gif'); % side
mask_sedan11 = imread('../sedan/5fb012d30fd9_13_mask.gif'); % side
mask_sedan15 = imread('../sedan/7fbc761387f3_05_mask.gif'); % side
mask_sedan19 = imread('../sedan/34b0c08544a5_05_mask.gif'); % side

mask_sed_side = {mask_sedan3, mask_sedan7, mask_sedan11, mask_sedan15, mask_sedan19};

% [max_height_sedan_side, max_width_sedan_side] = tam_max(mask_sed_side);
% [min_height_sedan_side, min_width_sedan_side] = tam_min(mask_sed_side);
% [height, width, med_top, med_bottom, med_left, med_right] = tam_med(mask_sed_side);

% [max_susp_sedan, min_susp_sedan] = suspension(mask_sed_side);

% decision_suspension
% suspension_sedan1 = decision_suspension(mask_sedan3, min_susp_pick_up);
% suspension_sedan2 = decision_suspension(mask_sedan7, min_susp_pick_up);
% suspension_sedan3 = decision_suspension(mask_sedan11, min_susp_pick_up);
% suspension_sedan4 = decision_suspension(mask_sedan15, min_susp_pick_up);
% suspension_sedan5 = decision_suspension(mask_sedan19, min_susp_pick_up);

% decision_dome
% dome_sedan1 = decision_dome(mask_sedan3);
% dome_sedan2 = decision_dome(mask_sedan7);
% dome_sedan3 = decision_dome(mask_sedan11);
% dome_sedan4 = decision_dome(mask_sedan15);
% dome_sedan5 = decision_dome(mask_sedan19);

%% Iniciar SUV %%
mask_SUV3 = imread('../SUV/3d7a1030deeb_05_mask.gif'); % side
mask_SUV7 = imread('../SUV/4fc2470c0f7b_05_mask.gif'); % side
mask_SUV11 = imread('../SUV/54ee69d7d5e5_05_mask.gif'); % side
mask_SUV15 = imread('../SUV/630335e37f40_05_mask.gif'); % side

mask_suv_side = {mask_SUV3, mask_SUV7, mask_SUV11, mask_SUV15};

% [max_height_suv_side, max_width_suv_side] = tam_max(mask_suv_side);
% [min_height_suv_side, min_width_suv_side] = tam_min(mask_suv_side);
% [height, width, med_top, med_bottom, med_left, med_right] = tam_med(mask_suv_side);

% [max_susp_suv, min_susp_suv] = suspension(mask_suv_side);

% decision_suspension
% suspension_SUV1 = decision_suspension(mask_SUV3, min_susp_pick_up);
% suspension_SUV2 = decision_suspension(mask_SUV7, min_susp_pick_up);
% suspension_SUV3 = decision_suspension(mask_SUV11, min_susp_pick_up);
% suspension_SUV4 = decision_suspension(mask_SUV15, min_susp_pick_up);

% decision_dome
% dome_SUV1 = decision_dome(mask_SUV3);
% dome_SUV2 = decision_dome(mask_SUV7);
% dome_SUV3 = decision_dome(mask_SUV11);
% dome_SUV4 = decision_dome(mask_SUV15);

%% Testing %%

mask_all_side = {mask_pick_side, mask_comp_side, mask_sed_side, mask_suv_side};
class = 1;
img = 1;
mask = mask_all_side{class}{img};

% figure; imshow(mask, [])
%-------------------------------------------------------------------------%
% [max_height, max_width] = tam_max(mask_all_side{class});
% [min_height, min_width] = tam_min(mask_all_side{class});
% [height, width, med_top, med_bottom, med_left, med_right] = tam_med(mask_all_side{class})
% [max_susp_suv, min_susp] = suspension(mask_all_side{class});
%-------------------------------------------------------------------------%
% [max_susp_pick_up, min_susp_pick_up] = suspension(mask_pick_side);
% suspension = decision_suspension(mask, min_susp_pick_up);
% dome = decision_dome(mask);
% [height, width, med_top, med_bottom, med_left, med_right] = tam_med(mask);
%-------------------------------------------------------------------------%

%% First Hypothesis %%

[max_area_sed, max_axis_sed, max_formula_sed, max_box_sed, min_area_sed] = references(mask_sed_side);
[max_area_suv, max_axis_suv, max_formula_suv, max_box_suv, min_area_suv] = references(mask_suv_side);
filename = 1;
while (filename ~= 0)
    [filename, path] = uigetfile('*.gif');
    if (filename == 0)
        break;
    end
    mask = imread(strcat(path,filename));
    split = strsplit(path,'\\');
    path = strcat(split{length(split)-1}, '\', split{length(split)});
    reg = regionprops(mask, 'Area', 'BoundingBox', 'Perimeter', 'Orientation', 'Eccentricity');
    axis = reg.BoundingBox(4) / reg.BoundingBox(3);
    formula = reg.Perimeter*reg.Perimeter / reg.Area;
    box = reg.BoundingBox(4) * reg.BoundingBox(3);
    image = strcat(path, filename);

    if (box > max_box_sed*1.005)           % Pick ups and SUVs always bigger than maz size of box in all Sedan (onde pode merdar mais facilmente)
        if (formula > max_formula_suv*1.2) % Pick up always bigger than max size of formula in all SUVs
            result = sprintf('Pick-Up');
        else
            result = sprintf('SUV');
        end
    else
        if (axis > max_axis_sed*1.05)
            result = sprintf('Compacto');     % Compacto always has the reason height/width bigger than Sedans
        else
            result = sprintf('Sedan');        % Last ones
        end
    end
    final = {image, result}
end

%% Second Hypothesis %%

% [max_area_sed, max_axis_sed, max_formula_sed, max_box_sed, min_area_sed] = references(mask_sed_side);
% filename = 1;
% while (filename ~= 0)
%     [filename, path] = uigetfile('*.gif');
%     if (filename == 0)
%         break;
%     end
%     mask = imread(strcat(path,filename));
%     split = strsplit(path,'\\');
%     path = strcat(split{length(split)-1}, '\', split{length(split)});
%     reg = regionprops(mask, 'Area', 'BoundingBox', 'Perimeter', 'Orientation', 'Eccentricity');
%     axis = reg.BoundingBox(4) / reg.BoundingBox(3);
%     formula = reg.Perimeter*reg.Perimeter / reg.Area;
%     box = reg.BoundingBox(4) * reg.BoundingBox(3);
%     image = strcat(path, filename);
%     
%     if (formula > max_formula_sed*1.2)
%         result = sprintf('../pick-Up');
%     else
%         if (reg.Area > max_area_sed*1.04)
%             result = sprintf('../SUV');
%         else
%             if (axis > max_axis_sed*1.05)
%                 result = sprintf('../compacto');
%             else
%                 result = sprintf('../sedan');
%             end
%         end
%     end
%     final = {image, result}
% end

%% Third Hypothesis %%

% [max_area_sed, max_axis_sed, max_formula_sed, max_box_sed, min_area_sed] = references(mask_sed_side);
% [max_height_sed, max_width_sed] = tam_max(mask_sed_side);
% filename = 1;
% while (filename ~= 0)
%     [filename, path] = uigetfile('*.gif');
%     if (filename == 0)
%         break;
%     end
%     mask = imread(strcat(path,filename));
%     split = strsplit(path,'\\');
%     path = strcat(split{length(split)-1}, '\', split{length(split)});
%     reg = regionprops(mask, 'Area', 'BoundingBox', 'Perimeter', 'Orientation', 'Eccentricity');
%     axis = reg.BoundingBox(4) / reg.BoundingBox(3);
%     formula = reg.Perimeter*reg.Perimeter / reg.Area;
%     box = reg.BoundingBox(4) * reg.BoundingBox(3);
%     height = reg.BoundingBox(4);
%     image = strcat(path, filename);
%     
%     mid_area_sed = (max_area_sed + min_area_sed)/2;
%     
%     if (formula > max_formula_sed*1.2)
%         result = sprintf('../pick-Up');
%     else
%         if (reg.Area > mid_area_sed)
%             if (height > max_height_sed*1.04)
%                 result = sprintf('../SUV');
%             else
%                 result = sprintf('../sedan');
%             end
%         else 
%             if (axis > max_axis_sed*1.05)
%                 result = sprintf('../compacto');
%             else
%                 result = sprintf('../sedan');
%             end
%         end
%     end
%     final = {image, result}
% end

%% Fourth Hypothesis %%

% [max_area_sed, max_axis_sed, max_formula_sed, max_box_sed, min_area_sed] = references(mask_sed_side);
% [max_area_comp, max_axis_comp, max_formula_comp, max_box_comp, min_area_comp] = references(mask_comp_side);
% filename = 1;
% while (filename ~= 0)
%     [filename, path] = uigetfile('*.gif');
%     if (filename == 0)
%         break;
%     end
%     mask = imread(strcat(path,filename));
%     split = strsplit(path,'\\');
%     path = strcat(split{length(split)-1}, '\', split{length(split)});
%     reg = regionprops(mask, 'Area', 'BoundingBox', 'Perimeter', 'Orientation', 'Eccentricity');
%     axis = reg.BoundingBox(4) / reg.BoundingBox(3);
%     formula = reg.Perimeter*reg.Perimeter / reg.Area;
%     box = reg.BoundingBox(4) * reg.BoundingBox(3);
%     image = strcat(path, filename);
%     
%     if (formula > max_formula_sed*1.2)
%         result = sprintf('../pick-Up');
%     else
%         if (axis > max_axis_sed*1.04)
%             if (reg.Area > max_area_comp*1.2)
%                 result = sprintf('../SUV');
%             else
%                 result = sprintf('../compacto');
%             end
%         else
%             result = sprintf('../sedan');
%         end
%     end
%     final = {image, result}
% end
