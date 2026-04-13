/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){	
	/*instance_destroy();
	instance_destroy(obj_resume_button);	
	instance_destroy(obj_home_button);	
	instance_destroy(obj_splash); */
	if (obj_controller.seen_opening_cutscene){
		room_goto(Forest);
	} else{
		obj_controller.seen_opening_cutscene = true;
		room_goto(Opening_cutscene);
		//room_goto(Forest);
	}
}