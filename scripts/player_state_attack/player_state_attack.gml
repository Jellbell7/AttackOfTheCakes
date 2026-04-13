
function player_state_attack(){
	//player cannot move while attacking
	vsp = 0;
	hsp = 0;
	
	if(has_yarn && sprite_index != daughter_attack_yarn){
		sprite_index = daughter_attack_yarn;
		image_index = 0; //start at begining of animation
		//set daughter's collision mask to attacking yarn mask
		mask_index = daughter_attack_yarnHB;
		audio_play_sound(snd_yarn_attack, 1, false);
	} 
	
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, obj_enemy, hitByAttackNow, false);

	if(hits > 0){
		for (var i = 0; i < hits; i ++){
			var hitId = hitByAttackNow[| i];
			if(!ds_list_find_index(hitByAttack, hitId)){
				ds_list_add(hitByAttack, hitId);
				with(hitId){
					//destory enemy
					//global.score += 100;
					if (hitId == obj_cake_boss.id){
						obj_cake_boss.hp -= 10;
						
						if (obj_cake_boss.hp <= 0){
							instance_destroy(hitId);
							global.score += 100;
						}
					}else{
						instance_destroy(hitId);
						global.score += 100;
					}
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttack);
	//set daughter's collision mask back to her body
	mask_index = daughter_idle;
	
	if(animation_end()){
		sprite_index = daughter_idle;
		state = player_state.free;
	}
	
}