/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_score); //use prebuilt font (for sizing)
//draw_set_color(c_red); //set color to red

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(50, 40, global.enemies_killed * 100);