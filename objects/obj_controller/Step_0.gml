/// @description Insert description here
// You can write your code in this editor
if(room == title){
	if(keyboard_check(vk_anykey)){
		room_goto(Opening_cutscene);
	}
}

else{
	if(!instance_exists(obj_daughter)){	
		instance_deactivate_all(false);
	}
	
	//gain a life
	if(global.score >= 100){
		global.score -= 100;
		lifeUp = true;
		global.hp += 1;
	}
	
	// game over
	if (global.hp <= 0){
		//check if button is pressed

		instance_deactivate_object(obj_enemy);
		instance_deactivate_object(obj_daughter);
		instance_deactivate_object(obj_cake_red_poison);
		instance_deactivate_object(obj_coin);
		
		home = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 + 230, "Instances", obj_home_button);
		restart = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 + 170, "Instances", obj_restart_button);
		
		var lose_text = instance_create_layer(0, 0, "Instances", obj_text_big);
		with lose_text{
			new_message = "GAME OVER!";
		}
		
		
	
	} else if (!instance_exists(obj_text_small)){
		var score_text = instance_create_layer(0, 0, "Instances", obj_text_small);
	}
	
}

if (room == Forest){
	
	if (instance_exists(obj_daughter) && !instance_exists(obj_cake_boss)){
		//audio_play_sound(snd_door, 1, false);
		obj_door.image_index = 1;
		if(obj_daughter.x >= 8922){
			room_goto(Castle);
		}
	}
}


// win
if (room == Castle){
	
	if (instance_exists(obj_daughter) && !instance_exists(obj_cake_boss) && haswon == false){
		haswon = true;
		var _cake = instance_create_layer(9856, 480, "Instances", obj_win_cake)
		with (_cake){
			image_xscale = 1.5;
			image_yscale = 2.5;
		}
		//if(obj_daughter.x >= 9867){

			var win_text = instance_create_layer(0, 0, "Instances", obj_text_big);
		with win_text{
			new_message = "YOU WIN!";
		//}
			
		instance_deactivate_object(obj_cake_red_poison);
		instance_deactivate_object(obj_cake);
		obj_daughter.visible = false;
		
		home = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 + 230, "Instances", obj_home_button);
		restart = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 + 170, "Instances", obj_restart_button);
	
		}
		
	}
}

