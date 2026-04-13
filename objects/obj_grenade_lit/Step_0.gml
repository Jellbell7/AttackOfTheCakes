/// @description Insert description here
// You can write your code in this editor
my_tilemap = layer_tilemap_get_id("collision_tiles");
if(place_meeting(x,y,my_tilemap)){
	instance_destroy(id, true);
}

x += spd *cos(dir);


y += ((-spd * sin(dir)) + (grv*t));
t += 0.01;

if (y > room_height){
	instance_destroy(id, true);
}
