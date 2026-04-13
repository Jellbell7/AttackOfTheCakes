/// @description Insert description here
// You can write your code in this editor

// idle chillin on branch
if (animation_switch == 0 && !wait){
	wait = true;
	image_index = 0;
	alarm[0] = room_speed * 2;
	}

// middle extending
if (animation_switch == 1 && !wait){
	wait = true;
	image_index = 1;
	alarm[1] = room_speed * 0.3;
	alarm_set(3, 1);
}

// end extending
if (animation_switch == 2 && !wait){
	wait = true;
	image_index = 2;
	
	alarm[2] = room_speed * 0.3;
	alarm_set(4, 2);
}

