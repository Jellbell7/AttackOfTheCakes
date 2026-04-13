/// @description Insert description here
// You can write your code in this editor


// so timer will be set for end of deactivation time
global.laser_enemy_hit = true;
//daughter invincible to enemies

//set enemy's speed/action to 0
if(other.object_index == obj_cake){
	other.spd = 0;
	other.do_no_harm = true;
	other.image_blend = make_colour_hsv(0, 255, 0); // (0, 255, 255) for red
} else if(other.object_index == obj_cake_green){
	other.do_nothing = true;
	other.do_no_harm = true;
	other.image_blend = make_colour_hsv(0, 255, 0);
} else if(other.object_index == obj_cake_red){
	other.do_nothing = true;
	other.do_no_harm = true;
	show_debug_message("NOPE!")
	other.image_blend = make_colour_hsv(0, 255, 0);
} else if(other.object_index == obj_cake_boss){
	other.do_nothing = true;
	other.do_no_harm = true;
	other.image_blend = make_colour_hsv(0, 255, 0);
}




