/// @description Insert description here
// You can write your code in this editor

// if hits ground, destroy bullet
if(place_meeting(x, y, layer_tilemap_get_id("collision_tiles"))){
	instance_destroy(id,true);
}