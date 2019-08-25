/// gui_createFrame(posX, posY, sizeX, sizeY, alpha, title, text)

var posX, posY, sizeX, sizeY, alpha, title, text;

posX    = argument0;
posY    = argument1;

sizeX   = argument2;
sizeY   = argument3;

alpha   = argument4

//draggable = true/false

title   = argument5;

text    = argument6;

draw_set_alpha(alpha); // Background
draw_set_color(make_color_rgb(100, 100, 100));
draw_roundrect_ext(posX, posY, sizeX + posX, sizeY + posY + 10, 15, 15, false);
draw_set_color(c_white);
draw_set_alpha(1);
/*    
draw_set_alpha(alpha); // Foreground
draw_set_color(make_color_rgb(45, 45, 45));
draw_rectangle(posX + 15, posY + 30, sizeX + posX - 20, sizeY + posY - 10, false);
draw_set_color(c_white);
draw_set_alpha(1);
*/

draw_set_font(font_ach_text);
draw_text(posX + 17, posY + 60, text); // Text

draw_set_font(font_ach_name);
draw_text(posX + 15, posY + 15, +string(title)); //Title
//-------------------------------------------------------
