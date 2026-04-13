/// @description Insert description here
// You can write your code in this editor

blink_count ++;
obj_daughter.image_alpha = 1;
if(blink_count < 13){
	alarm[2] = room_speed * 0.1;
} else{
	if(instance_exists(obj_enemy)){
		obj_enemy.hit_ready = true;
	}
	if(instance_exists(obj_spikes)){
		obj_spikes.hit_ready = true;
	}
	if(instance_exists(obj_lava)){
		obj_lava.hit_ready = true;
	}
}