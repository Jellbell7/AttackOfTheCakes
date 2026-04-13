/// @description poison collision
// You can write your code in this editor

// if poison hits the environment, destroy the poison
if(place_meeting(x, y, my_tilemap)){
		instance_destroy(id,true);
	}