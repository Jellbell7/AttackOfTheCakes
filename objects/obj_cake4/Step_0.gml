/// @description cake follow player
// You can write your code in this editor


// Jenelle 
// move the cake to follow the player
//sprite_index = spr_cake_placeholder;
//move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x = move_x * spd;
hsp = dir * spd;
vsp += grav;

//move_towards_point(obj_daughter.x, y, 1);

//if (move_x == 0 && move_y == 0){
	//sprite_index = spr_cake_placeholder;
//}

// horizontal collision
if place_meeting(x+hsp-1, y, obj_wall){
	move_y = 0;
	// move until it hits a wall 
	while(!place_meeting(x+sign(hsp)-1, y,obj_wall )){
		x += sign(hsp);	
	}
	// reverse direction
	hsp = 0;
	dir *= -1;
}


x += hsp;

// vertical collision
if place_meeting(x, y+vsp, obj_wall){
	move_y = 0;
	// move until it hits a wall 
	while(!place_meeting(x, y+sign(vsp),obj_wall )){
		y += sign(vsp);	
		
	}
	
		vsp = 0;
}
y += vsp;

// cake collision
// if cake comes into contact with the daughter
if (place_meeting(x, y, obj_D2)){
	// if daughter lands on top of cake
	if (obj_D2.y < y-16){
		// have daughter bounce off
		with(obj_D2) vsp = - jump;
		// destroy the cake
		instance_destroy();
	}
	 else {
	// if the cake gets you, restart the game
	game_restart();
	
	}

}


//else if move_y < 10
//{
	//sprite_index = spr_cake_placeholder;
	//move_y += 1;
//}

//move_and_collide(move_x, move_y, my_tilemap, 4, 0, 0, -1, -1);
//if (move_x != 0)
//{
//	image_xscale = sign(move_x);
//}