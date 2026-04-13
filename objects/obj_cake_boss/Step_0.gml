/// @description Insert description here
// You can write your code in this editor

//event_inherited();
my_tilemap = layer_tilemap_get_id("collision_tiles");

if(poison_ready && !do_nothing){
	poison_ready = false;
		
	if(obj_cake_boss.sprite_index == boss_1){
		var poison = instance_create_layer(x-60, y-50, "Instances", obj_cake_red_poison);
		poison.direction = point_direction(x-60, y-50, obj_daughter.x, obj_daughter.y);
		
	} else if (obj_cake_boss.sprite_index == boss_2){
		var poison = instance_create_layer(x-50, y-60, "Instances", obj_cake_red_poison);
		poison.direction = point_direction(x-50, y-60, obj_daughter.x, obj_daughter.y);
		var poison2 = instance_create_layer(x-70, y-50, "Instances", obj_cake_red_poison);
		poison2.direction = point_direction(x-70, y-50, obj_daughter.x, obj_daughter.y);

} else if (obj_cake_boss.sprite_index == boss_4){
		var poison = instance_create_layer(x-10, y-50, "Instances", obj_cake_red_poison);
		poison.direction = point_direction(x-10, y-50, obj_daughter.x, obj_daughter.y);
		var poison2 = instance_create_layer(x-45, y-65, "Instances", obj_cake_red_poison);
		poison2.direction = point_direction(x-45, y-65, obj_daughter.x, obj_daughter.y);
		var poison3 = instance_create_layer(x-80, y-50, "Instances", obj_cake_red_poison);
		poison3.direction = point_direction(x-80, y-50, obj_daughter.x, obj_daughter.y);
		var poison4 = instance_create_layer(x-100, y-30, "Instances", obj_cake_red_poison);
		poison4.direction = point_direction(x-100, y-30, obj_daughter.x, obj_daughter.y);
		
	}
	
	alarm[2] = room_speed * 2;
}

if (hp <= 100 && hp > 75 ){
	obj_cake_boss.sprite_index = boss_1;
	
} else if (hp <= 75 && hp > 50 ){
	obj_cake_boss.sprite_index = boss_2;
	// move side to side
	if (x <= start_x || x >= end_x) {
	dir *= -1;
	}

	x += spd * dir;
}else   {
	obj_cake_boss.sprite_index = boss_4;
	// move side to side
	spd = 1.5;
	if (x <= start_x || x >= end_x) {
	dir *= -1;
	}

	x += spd * dir;
	
	// jump up and down
	y += spd * dir_y;
	if (y <= start_y ) {
		dir_y *= -1;
		y += spd * dir_y;
	
	}
	if (place_meeting(x, y, my_tilemap)) {
		dir_y *= -1;
	}
}