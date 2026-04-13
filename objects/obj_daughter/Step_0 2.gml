/// @description movement
// You can write your code in this editor
my_tilemap = layer_tilemap_get_id("collision_tiles");
var keyleft = keyboard_check(ord("A"));

var keyright = keyboard_check(ord("D"));

var move = keyright - keyleft;

var jumping = keyboard_check(ord("W"));
hsp = move * spd;

vsp += grv;
//left-right movement
if (move != 0){
	if(has_yarn == true){
		sprite_index = daughter_run_yarn;
	}else{
		sprite_index = daughter_run;
	}
	image_xscale = move;
}else{
	if(has_yarn == true){
	sprite_index = daughter_idle_yarn;
	}
	else{
		sprite_index = daughter_idle;
	}
}

//horizontal collision w/ blocks
if (place_meeting(x +hsp, y, my_tilemap)){
	while (!place_meeting(x + sign(hsp), y, my_tilemap)){
		x+= sign(hsp);
	}	
	hsp = 0;
}
x += hsp;

//player cannot run off edge of screen (mainly for start/end edges of map)
x=clamp(x, 12, room_width);


//vertical collision w/ blocks
if(place_meeting(x, y+vsp, my_tilemap)){
	while(!place_meeting(x, y + vsp, my_tilemap)){
		y += sign(vsp);
	}
	vsp = 0;
	grounded = true;
}else{
	grounded = false;
}
y += vsp;


//jump
if(grounded && jumping){
	vsp = -jump_spd;
	grounded = false;

	//audio_play_sound(snd_jump, 1, false);
}

if (grounded == false){
	if(has_yarn == true){
	sprite_index = daughter_jump_yarn;
	}else{
		sprite_index = daughter_jump;
	}
}



