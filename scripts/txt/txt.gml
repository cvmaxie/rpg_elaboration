var xpos = argument0;
var ypos = argument1;
var text = argument2; 

var width = sprite_get_width(spr_txt);
var height = sprite_get_height(spr_txt);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite(spr_txt, 0, xpos , ypos);
draw_set_font(font0)
draw_text_ext(xpos - width/2 + 8, ypos - height/2 + 7, text, 12, width * .95);