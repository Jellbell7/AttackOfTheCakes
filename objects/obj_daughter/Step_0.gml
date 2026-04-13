/// @description movement
// You can write your code in this editor
my_tilemap = layer_tilemap_get_id("collision_tiles");


keyleft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyright = keyboard_check(ord("D")) || keyboard_check(vk_right);
move = keyright - keyleft;
jumping = keyboard_check(ord("W")) || keyboard_check(vk_space);
attack = keyboard_check(ord("F"));
clicked = mouse_button;


switch (state){
	case player_state.free: player_state_free(); break;
	case player_state.attack: player_state_attack(); break;
	case player_state.attack_grenade: player_state_attack_grenade(); break;
}


//state for attacking with laser
if(clicked && has_laser){
	attack_laser();
}

//collision with enemies
enemy_colliding = instance_place(x, y, obj_enemy);
if (enemy_colliding != noone ){

	if(enemy_colliding.hit_ready && enemy_colliding.id != obj_cake_boss.id){
		// if daughter lands on top of cake
		if(enemy_colliding.object_index != obj_cake_green.object_index && y < enemy_colliding.y-16){
				
			with(obj_daughter) vsp = - jump_spd; // daughter bounces off
			global.score += 5;
			instance_destroy(enemy_colliding); // destroy the cake
			audio_play_sound(snd_cake_splat, 1, false);
		}
		
		else { // cake hits daughter from any other angle
			if(enemy_colliding.do_no_harm == false){
			enemy_colliding.hit_ready = false;
			effect_create_above(ef_smoke, enemy_colliding.x, enemy_colliding.y, 0, c_red);
			global.lost_life = true; //for drawing lives red when hit
			global.hp --;
			
			// wait before cake can hit daughter again
			blink_count = 0;
			image_alpha = 0.5;
			alarm[1] = room_speed * 0.1;
			audio_play_sound(snd_daughter_damage, 1, false);
			}
		}
		
	}else {
		if(enemy_colliding.hit_ready && enemy_colliding.id != obj_cake_green.id){ // cake hits daughter from any other angle
			if(enemy_colliding.do_no_harm == false){
			enemy_colliding.hit_ready = false;
			effect_create_above(ef_smoke, enemy_colliding.x, enemy_colliding.y, 0, c_red);
			global.lost_life = true; //for drawing lives red when hit
			global.hp --;
			
		
			// wait before cake can hit daughter again
			blink_count = 0;
			image_alpha = 0.5;
			alarm[1] = room_speed * 0.1;
			}
				
		}

	}

}


// if daughter hits spikes
if (place_meeting(x, y, obj_spikes)){
	if(obj_spikes.hit_ready){ 
		obj_spikes.hit_ready = false;
		effect_create_above(ef_smoke, x, y, 0, c_red);
		global.lost_life = true; //for drawing lives red when hit
		global.hp --;
		
		// wait before spikes can hit daughter again
		blink_count = 0;
		image_alpha = 0.5;
		alarm[1] = room_speed * 0.1;	
	}
}

// if daughter hits lava
if (place_meeting(x, y, obj_lava)){
	global.lost_life = true; //for drawing lives red when hit
	global.hp --;
		
	blink_count = 0;
	image_alpha = 0.5;
	alarm[1] = room_speed * 0.1;	
		
	// respawn
	if(obj_daughter.x <= 2096){
		instance_destroy(id, true);
		instance_create_layer(573, 615, "Instances", obj_daughter);
		obj_daughter.depth = -1;
	}else if (obj_daughter.x > 2096 && obj_daughter.x < 4856){
		instance_destroy(id, true);
		instance_create_layer(2730, 581, "Instances", obj_daughter);
		obj_daughter.depth = -1;
	}else if(obj_daughter.x > 4856 && obj_daughter.x < 6783){
		instance_destroy(id, true);
		instance_create_layer(5420, 101, "Instances", obj_daughter);
		obj_daughter.depth = -1;
	}else if (obj_daughter.x > 6783 && obj_daughter.x < 8124){
		instance_destroy(id, true);
		instance_create_layer(6780, 152, "Instances", obj_daughter);
		obj_daughter.depth = -1;
	}else {
		instance_destroy(id, true);
		instance_create_layer(8130, 220, "Instances", obj_daughter);
		obj_daughter.depth = -1;
	}
	
	global.move_ready = false;
	alarm[3] = room_speed * 0.5;
}


// daughter falls off map
if (y > room_height){
	if (global.hp >= 1){
		global.hp -= 1;
		if (global.hp != 0) {
			if (room == Forest){
				if(obj_daughter.x < 6330){
					instance_destroy(id, true);
					instance_create_layer(5595, 333, "Instances", obj_daughter);
					obj_daughter.depth = -1;
				} else{
					instance_destroy(id, true);
					instance_create_layer(6335, 490, "Instances", obj_daughter);
					obj_daughter.depth = -1;
				}
			}
		}
		
		global.move_ready = false;
		alarm[3] = room_speed * 0.5;
	}else{
		instance_destroy();
	}
}