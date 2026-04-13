/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_small); //use prebuilt font (for sizing)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(view_wport[0] - 975, 60, string(global.score)); 

draw_set_color(c_white); //set color to red