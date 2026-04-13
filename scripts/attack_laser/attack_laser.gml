// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_laser(){
	 
// pressing mouse and has the laser
//if(mouse_button && has_laser){ 
	// if enemy has already been hit and a timer has not already been set,
	if(global.laser_enemy_hit && !global.laser_timer_set){
		global.laser_timer_set = true; // set timer
		alarm[0] = room_speed * 1;
	} else if (!global.laser_enemy_hit){ //allow laser to fire
		if(sprite_index != daughter_attack_laser){
			sprite_index = daughter_attack_laser;
			image_index = 0; //start at begining of animation
			audio_play_sound(snd_laser, 1, false);
		}
		
		dir = point_direction(x, y, mouse_x, mouse_y); //4 direction from daughter to mouse click
	
		// create laser dot
		laser_dot = instance_create_layer(x, y, "Instances", obj_laser_dot);
		laser_dot.image_xscale = 0.25;
		laser_dot.image_yscale = 0.25;
		laser_dot.image_blend = make_colour_hsv(0, 255, 255);
		laser_dot.speed = 10;
		laser_dot.direction = dir;
	}
	
	// if end of laser firing animation, set sprite back to idle
	//if(animation_end()){
		sprite_index = daughter_idle;
		state = player_state.free;
	//}
}
//}