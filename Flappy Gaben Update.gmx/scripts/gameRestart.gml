global.defeat = false;

var fx, fy, i;

var currentWidth = display_get_width(); //resize window width and height
var currentHeight = display_get_height();

var aspectRatio = currentWidth / currentHeight;

var baseHeight = display_get_height();;
var baseWidth =  baseHeight * aspectRatio;

view_wview = floor(baseWidth);
view_hview = baseHeight;

view_wport = currentWidth;
view_hport = currentHeight;

view_yview[0] = 0;

display_set_gui_size(view_wview, view_hview);
surface_resize(application_surface, view_wview, view_hview);
window_set_size(view_wview, view_hview);

with (obj_star)     { instance_destroy(); }
with (obj_farStar)  { instance_destroy(); }
with (obj_tube)     { instance_destroy(); }
with (obj_point)    { instance_destroy(); }

/*instance_deactivate_object(obj_star); //deactivate and destroy objects
instance_deactivate_object(obj_farStar);
instance_deactivate_object(obj_tube);
instance_deactivate_object(obj_point); */
instance_deactivate_object(obj_player);

instance_destroy(obj_hat1, 1);
instance_destroy(obj_hat2, 1);
instance_destroy(obj_hat3, 1);
instance_destroy(obj_hat4, 1);
instance_destroy(obj_hat5, 1);
instance_destroy(obj_hat6, 1);
instance_destroy(obj_hat7, 1);
instance_destroy(obj_hat8, 1);
instance_destroy(obj_hat9, 1);
instance_destroy(obj_hat10, 1);

instance_destroy(oCase1, 1);
instance_destroy(oCase2, 1);
instance_destroy(oCase3, 1);
instance_destroy(oCase4, 1);
instance_destroy(oCase5, 1);
instance_destroy(oCase6, 1);
instance_destroy(oCase7, 1);
instance_destroy(oCase8, 1);


instance_destroy(obj_pause, 1);
instance_destroy(obj_dBoxMain, 1);
instance_destroy(obj_dialogText, 1);

instance_destroy(obj_tubeSpawner, 1);
instance_destroy(obj_tubeSpawner, 1);
instance_destroy(obj_hatSpawner, 1);

instance_create(320, 320, obj_player);
instance_create(96, 96, obj_tubeSpawner);
instance_create(160, 96, obj_hatSpawner);

for (i = 0; i < 300; i++) { //spawn stars with start new game
    y = random_range(0, window_get_height());
    x = random_range(0, window_get_width());
    
    instance_create(x, y, obj_star);
    
    fy = random_range(0, window_get_height());
    fx = random_range(0, window_get_width());
    
    instance_create(fx, fy, obj_farStar);
 }
