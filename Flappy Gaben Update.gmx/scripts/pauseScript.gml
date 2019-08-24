obj_player.vspeed = 0;
obj_player.gravity = 0;
    
obj_tube.hspeed = 0;
obj_point.hspeed = 0;
    
obj_star.hspeed = 0;
obj_farStar.hspeed = 0;


//instance_activate_object(obj_inGameMenu);
instance_deactivate_object(obj_starSpawner);
instance_deactivate_object(obj_tubeSpawner);
instance_deactivate_object(obj_drawScore);
instance_deactivate_object(obj_hatSpawner)


draw_set_color(c_black);

draw_set_alpha(0.5);

draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);

draw_set_halign(fa_center);

draw_set_font(font_menu);

draw_set_color(c_red);

draw_set_alpha(1);

draw_text(window_get_width() / 2, window_get_height() / 2, "*Pause*");

draw_set_color(c_white);

draw_set_alpha(1);

instance_activate_object(obj_inGameMenu);

draw_set_color(c_white);

