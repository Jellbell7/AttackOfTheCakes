/// @description Insert description here
// You can write your code in this editor

//instance_destroy();
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