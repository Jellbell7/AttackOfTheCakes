/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_score); //use prebuilt font (for sizing)
draw_set_color(c_red); //set color to red

t = string(alarm[0] / room_speed);
draw_text(50, 25, t);
