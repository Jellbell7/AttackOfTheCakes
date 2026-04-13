/// @description Insert description here
// You can write your code in this editor

global.enemies_killed ++;
effect_create_above(ef_firework, x, y, 0, c_lime);
/*
boop_text = instance_create_layer(x, y, "Instances", obj_boop_text);
	with boop_text{
		new_message = "boop";
		x_coord = x;
		y_coord = y;
	}
	
alarm[0] = room_speed * 1;

show_debug_message("alarm should have been called");