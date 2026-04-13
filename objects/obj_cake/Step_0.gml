/// @description cake follow player
// You can write your code in this editor

//inherit collision logic with daughter
event_inherited();

move_x = move_x * spd;
hsp = dir * spd;
vsp += grav;

// horizontal collision with tilemap
if place_meeting(x+hsp, y,my_tilemap){
	move_y = 0;
	// move until it hits a wall 
	while(!place_meeting(x+sign(hsp), y,my_tilemap )){
		x += sign(hsp);	
	}
	// reverse direction
	hsp = 0;
	dir *= -1;
	image_xscale = image_xscale * -1;
}

x += hsp;

// vertical collision with tilemap
if place_meeting(x, y+vsp, my_tilemap){
	move_y = 0;
	// move until it hits a wall 
	while(!place_meeting(x, y+sign(vsp),my_tilemap )){
		y -= sign(hsp);	
	}
	vsp = 0;
}
y += vsp;
