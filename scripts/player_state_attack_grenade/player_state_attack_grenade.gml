// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_attack_grenade(){
if(has_grenade && sprite_index != daughter_throw_object){
		show_debug_message("Yep");	
		sprite_index = daughter_throw_object;
		image_index = 0;
		instance_create_layer(obj_daughter.x, obj_daughter.y, "Instances", obj_grenade_lit);		
	}
	if(animation_end()){
		has_grenade = false;
		state = player_state.free;
		}
}