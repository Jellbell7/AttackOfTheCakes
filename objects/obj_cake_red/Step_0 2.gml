/// @description Insert description here
// You can write your code in this editor

// flip position
if (obj_daughter.x < x){
	
	//if(image_xscale != image_xscale * -1) image_xscale = image_xscale * -1;


	// idle 
	if (animation_switch == 0 && !wait){
	
		wait = true;
		image_index = 0;
	

		alarm[0] = room_speed * 2;
		}

	// down build up
	if (animation_switch == 1 && !wait){
		wait = true;
		image_index = 1;
		// flip position


		alarm[1] = room_speed * 0.3;
		//alarm_set(3, 1);
	}

	// middle build up
	if (animation_switch == 2 && !wait){
		wait = true;
		image_index = 2;
		// flip position


		alarm[2] = room_speed * 0.3;
		//alarm_set(4, 2);
	}

	// top build up
	if (animation_switch == 3 && !wait){
		wait = true;
		image_index = 3;
		// flip position


		alarm[3] = room_speed * 0.3;
		//alarm_set(4, 2);
	}

	// fire
	if (animation_switch == 4 && !wait){
		wait = true;
		image_index = 4;
		// flip position
 

		alarm[4] = room_speed * 0.3;
		//alarm_set(4, 2);
	}

} else{
	
	//if(image_xscale != image_xscale * -1) image_xscale = image_xscale * -1;


	// idle 
	if (animation_switch == 0 && !wait){
	
		wait = true;
		image_index = 0;
		//if ( image_xscale != image_xscale * -1) {
		//	image_xscale = image_xscale* -1;
		//}

		alarm[0] = room_speed * 2;
		}

	// down build up
	if (animation_switch == 1 && !wait){
		wait = true;
		image_index = 1;
		// flip position
		//image_xscale = image_xscale * -1;

		alarm[1] = room_speed * 0.3;
		//alarm_set(3, 1);
	}

	// middle build up
	if (animation_switch == 2 && !wait){
		wait = true;
		image_index = 2;
		// flip position
		//image_xscale = image_xscale * -1;

		alarm[2] = room_speed * 0.3;
		//alarm_set(4, 2);
	}

	// top build up
	if (animation_switch == 3 && !wait){
		wait = true;
		image_index = 3;
		// flip position
		//image_xscale = image_xscale * -1;

		alarm[3] = room_speed * 0.3;
		//alarm_set(4, 2);
	}

	// fire
	if (animation_switch == 4 && !wait){
		wait = true;
		image_index = 4;
		// flip position
		//if ( image_xscale != image_xscale * -1) {
		//	image_xscale = image_xscale* -1;
		//}

		alarm[4] = room_speed * 0.3;
		//alarm_set(4, 2);
	}
	
}



