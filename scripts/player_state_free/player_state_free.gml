function player_state_free(){
	if(global.move_ready){
		hsp = move * spd;
	} else{
		hsp = 0; 
	}
	
	vsp += grv;
	
	var keyup = keyboard_check(ord("W")) || keyboard_check(vk_space);
	var keydown = keyboard_check(ord("S"));
		
	//left-right movement
	if (move != 0){
		if(has_yarn){
			sprite_index = daughter_run_yarn;
		}else if (has_laser){
			sprite_index = daughter_run_laser;
		}else if (has_grenade){
			sprite_index = daughter_run_grenade;
		}
		else{
			sprite_index = daughter_run;
		}
		image_xscale = move;
	} else {
		if(has_yarn){
			sprite_index = daughter_idle_yarn;
		}else if (has_laser){
			sprite_index = daughter_idle_laser;
		}else if(has_grenade){
			sprite_index = daughter_idle_grenade;
		}
		else{
		sprite_index = daughter_idle;
		}
	}
	
	if(place_meeting(x, y, obj_water)){
		if(spd != 0 && !in_water){
			in_water = true;
			obj_daughter.spd -= 2;
		}
	} else{
		spd = 4;
		in_water = false;
	}
	
	// climbing ladder
	if (keyup || keydown){
		// if player reach ladder, set ladder to true
		if place_meeting(x, y, obj_vines) ladder = true;
	}

	// entering climbing state
	if (ladder) {
		vsp = 0;
			
		if (keyup) vsp = -2;
		if (keydown) vsp = 2;
		if (!place_meeting(x, y, obj_vines)) ladder = false;
		if (jumping) ladder = false;
	}

	//horizontal collision w/ blocks
	if (place_meeting(x +hsp, y, my_tilemap)){
		while (!place_meeting(x + sign(hsp), y, my_tilemap)){
			x+= sign(hsp);
		}	
		hsp = 0;
	} 
	x+= hsp;

	//player cannot run off edge of screen (mainly for start/end edges of map)
	x=clamp(x, 12, room_width);
	
	// Vertical collision with moving platform
	if (place_meeting(x, y + vsp, my_tilemap)) {

		if(vsp > 0) canJump = 1;
		while (abs(vsp) > 0.1) {
			vsp *= 0.5;
			if(!place_meeting(x, y + vsp, my_tilemap)) y += vsp;
		}
		
		if(sign(vsp) == 1) grounded = true;
		vsp = 0;
		
	}

	y += vsp;
	

	//jump
	if(grounded && jumping){
		vsp = -jump_spd;
		grounded = false;
	}

	if (!grounded){
		if(has_yarn){
			sprite_index = daughter_jump_yarn;
		} else if (has_laser){
			sprite_index = daughter_jump_laser;
		}
		else{
			sprite_index = daughter_jump;
		}
	}
	
	if(attack && has_yarn){ 
		state = player_state.attack;
	} else if (clicked && has_laser){
		state = player_state.attack_laser;
	}else if (clicked && has_grenade){
		state = player_state.attack_grenade;
	}
}