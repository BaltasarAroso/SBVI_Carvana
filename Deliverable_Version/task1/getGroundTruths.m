function gndtrus = getGroundTruths()
%getGroundTruths Gets Carvana ground truths
%   This function is necessary for the calculation of the Sørensen-Dice 
%   similarity coefficient for the image segmentation


    %% Iniciar compactos %%
    mask_compact1 = imread('../compacto/2faf504842df_01_mask.gif'); % front
    mask_compact2 = imread('../compacto/2faf504842df_09_mask.gif'); % back
    mask_compact3 = imread('../compacto/2faf504842df_05_mask.gif'); % side
    mask_compact4 = imread('../compacto/2faf504842df_11_mask.gif'); % other

    mask_compact5 = imread('../compacto/4b74275babf7_01_mask.gif'); % front
    mask_compact6 = imread('../compacto/4b74275babf7_09_mask.gif'); % back
    mask_compact7 = imread('../compacto/4b74275babf7_13_mask.gif'); % side
    mask_compact8 = imread('../compacto/4b74275babf7_11_mask.gif'); % other

    mask_compact9 = imread('../compacto/47ea8f25c948_01_mask.gif'); % front
    mask_compact10 = imread('../compacto/47ea8f25c948_09_mask.gif'); % back
    mask_compact11 = imread('../compacto/47ea8f25c948_05_mask.gif'); % side
    mask_compact12 = imread('../compacto/47ea8f25c948_07_mask.gif'); % other

    mask_compact13 = imread('../compacto/898339fab87a_01_mask.gif'); % front
    mask_compact14 = imread('../compacto/898339fab87a_09_mask.gif'); % back
    mask_compact15 = imread('../compacto/898339fab87a_05_mask.gif'); % side
    mask_compact16 = imread('../compacto/898339fab87a_12_mask.gif'); % other

    mask_comp_front = {mask_compact1, mask_compact5, mask_compact9, mask_compact13};
    mask_comp_back = {mask_compact2, mask_compact6, mask_compact10, mask_compact14};
    mask_comp_side = {mask_compact3, mask_compact7, mask_compact11, mask_compact15};
    mask_comp_other = {mask_compact4, mask_compact8, mask_compact12, mask_compact16};


    %% Iniciar Pick Up %%
    mask_pick_up1 = imread('../pick_up/0ed6904e1004_01_mask.gif'); % front
    mask_pick_up2 = imread('../pick_up/0ed6904e1004_09_mask.gif'); % back
    mask_pick_up3 = imread('../pick_up/0ed6904e1004_05_mask.gif'); % side
    mask_pick_up4 = imread('../pick_up/0ed6904e1004_11_mask.gif'); % other

    mask_pick_up5 = imread('../pick_up/3cb21125f126_01_mask.gif'); % front
    mask_pick_up6 = imread('../pick_up/3cb21125f126_09_mask.gif'); % back
    mask_pick_up7 = imread('../pick_up/3cb21125f126_13_mask.gif'); % side
    mask_pick_up8 = imread('../pick_up/3cb21125f126_10_mask.gif'); % other

    mask_pick_up9 = imread('../pick_up/0795e132d090_01_mask.gif'); % front
    mask_pick_up10 = imread('../pick_up/0795e132d090_09_mask.gif'); % back
    mask_pick_up11 = imread('../pick_up/0795e132d090_05_mask.gif'); % side
    mask_pick_up12 = imread('../pick_up/0795e132d090_11_mask.gif'); % other

    mask_pick_front = {mask_pick_up1, mask_pick_up5, mask_pick_up9};
    mask_pick_back = {mask_pick_up2, mask_pick_up6, mask_pick_up10};
    mask_pick_side = {mask_pick_up3, mask_pick_up7, mask_pick_up11};
    mask_pick_other = {mask_pick_up4, mask_pick_up8, mask_pick_up12};


    %% Iniciar Sedan %%
    mask_sedan1 = imread('../sedan/1ae8a68a40e4_01_mask.gif'); % front
    mask_sedan2 = imread('../sedan/1ae8a68a40e4_09_mask.gif'); % back
    mask_sedan3 = imread('../sedan/1ae8a68a40e4_13_mask.gif'); % side
    mask_sedan4 = imread('../sedan/1ae8a68a40e4_07_mask.gif'); % other

    mask_sedan5 = imread('../sedan/2ea62c1beee7_01_mask.gif'); % front
    mask_sedan6 = imread('../sedan/2ea62c1beee7_09_mask.gif'); % back
    mask_sedan7 = imread('../sedan/2ea62c1beee7_05_mask.gif'); % side
    mask_sedan8 = imread('../sedan/2ea62c1beee7_15_mask.gif'); % other

    mask_sedan9 = imread('../sedan/5fb012d30fd9_01_mask.gif'); % front
    mask_sedan10 = imread('../sedan/5fb012d30fd9_09_mask.gif'); % back
    mask_sedan11 = imread('../sedan/5fb012d30fd9_13_mask.gif'); % side
    mask_sedan12 = imread('../sedan/5fb012d30fd9_15_mask.gif'); % other

    mask_sedan13 = imread('../sedan/7fbc761387f3_01_mask.gif'); % front
    mask_sedan14 = imread('../sedan/7fbc761387f3_09_mask.gif'); % back
    mask_sedan15 = imread('../sedan/7fbc761387f3_05_mask.gif'); % side
    mask_sedan16 = imread('../sedan/7fbc761387f3_03_mask.gif'); % other

    mask_sedan17 = imread('../sedan/34b0c08544a5_01_mask.gif'); % front
    mask_sedan18 = imread('../sedan/34b0c08544a5_09_mask.gif'); % back
    mask_sedan19 = imread('../sedan/34b0c08544a5_05_mask.gif'); % side
    mask_sedan20 = imread('../sedan/34b0c08544a5_11_mask.gif'); % other

    mask_sed_front = {mask_sedan1, mask_sedan5, mask_sedan9, mask_sedan13, mask_sedan17};
    mask_sed_back = {mask_sedan2, mask_sedan6, mask_sedan10, mask_sedan14, mask_sedan18};
    mask_sed_side = {mask_sedan3, mask_sedan7, mask_sedan11, mask_sedan15, mask_sedan19};
    mask_sed_other = {mask_sedan4, mask_sedan8, mask_sedan12, mask_sedan16, mask_sedan20};


    %% Iniciar SUV %%
    mask_SUV1 = imread('../SUV/3d7a1030deeb_01_mask.gif'); % front
    mask_SUV2 = imread('../SUV/3d7a1030deeb_09_mask.gif'); % back
    mask_SUV3 = imread('../SUV/3d7a1030deeb_05_mask.gif'); % side
    mask_SUV4 = imread('../SUV/3d7a1030deeb_07_mask.gif'); % other

    mask_SUV5 = imread('../SUV/4fc2470c0f7b_01_mask.gif'); % front
    mask_SUV6 = imread('../SUV/4fc2470c0f7b_09_mask.gif'); % back
    mask_SUV7 = imread('../SUV/4fc2470c0f7b_05_mask.gif'); % side
    mask_SUV8 = imread('../SUV/4fc2470c0f7b_11_mask.gif'); % other

    mask_SUV9 = imread('../SUV/54ee69d7d5e5_01_mask.gif'); % front
    mask_SUV10 = imread('../SUV/54ee69d7d5e5_09_mask.gif'); % back
    mask_SUV11 = imread('../SUV/54ee69d7d5e5_05_mask.gif'); % side
    mask_SUV12 = imread('../SUV/54ee69d7d5e5_11_mask.gif'); % other

    mask_SUV13 = imread('../SUV/630335e37f40_01_mask.gif'); % front
    mask_SUV14 = imread('../SUV/630335e37f40_09_mask.gif'); % back
    mask_SUV15 = imread('../SUV/630335e37f40_05_mask.gif'); % side
    mask_SUV16 = imread('../SUV/630335e37f40_07_mask.gif'); % other

    mask_suv_front = {mask_SUV1, mask_SUV5, mask_SUV9, mask_SUV13};
    mask_suv_back = {mask_SUV2, mask_SUV6, mask_SUV10, mask_SUV14};
    mask_suv_side = {mask_SUV3, mask_SUV7, mask_SUV11, mask_SUV15};
    mask_suv_other = {mask_SUV4, mask_SUV8, mask_SUV12, mask_SUV16};



    %% Gather everything
    
    gndtrus = {mask_comp_front, mask_comp_back, mask_comp_side, mask_comp_other, mask_pick_front, mask_pick_back, mask_pick_side, mask_pick_other, mask_sed_front, mask_sed_back, mask_sed_side, mask_sed_other, mask_suv_front, mask_suv_back, mask_suv_side, mask_suv_other};

end

