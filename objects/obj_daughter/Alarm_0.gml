/// @description Insert description here
// You can write your code in this editor

global.laser_enemy_hit = false;
global.laser_timer_set = false;

//reset all enemy's behaviors
for (var i = 0; i < instance_number(obj_cake); ++i;){
	instance_find(obj_cake,i).spd = 1;
	instance_find(obj_cake,i).image_blend = c_white;
}

for (var i = 0; i < instance_number(obj_cake_green); ++i;){
	instance_find(obj_cake_green,i).do_nothing = false;
	instance_find(obj_cake_green,i).image_blend = c_white;
}

for (var i = 0; i < instance_number(obj_cake_red); ++i;){
	instance_find(obj_cake_red,i).do_nothing = false;
	instance_find(obj_cake_red,i).image_blend = c_white;
}

for (var i = 0; i < instance_number(obj_cake_boss); ++i;){
	instance_find(obj_cake_boss,i).do_nothing = false;
	instance_find(obj_cake_boss,i).image_blend = c_white;
}