game_time++;

//hardware input
exe_key_reaction_01();
exe_mouse_reaction_01();
exe_pad_reaction_01();
exe_pad_interpretation_01();

//menu operations
exe_secondary_mouse_reaction_01(); //draging menu
exe_check_form_menu_with_auto_update();
exe_current_menu_load();
exe_check_mouse_vs_clickable_buttons();


exe_perform_moves_on_map3d();


exe_draw_3d(); //gameplay surface should be placed inside by any means



exe_draw_menu_backgrounds();	
exe_draw_clickable();
exe_draw_mouseinfo();

if reset_current_menu_array > 0	{control_array.current_menu_array = [];	reset_current_menu_array = 0};





















