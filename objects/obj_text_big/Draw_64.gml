/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_big); //use prebuilt font (for sizing)
draw_set_color(c_red); //set color to red

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(view_wport[0] / 2, display_get_height()/2 - 200, new_message); 
