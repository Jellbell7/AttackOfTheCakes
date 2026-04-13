if (instance_exists(obj_daughter)) {
	//display life
	var xhp = 30;
	
	repeat(global.hp) {
		draw_sprite(spr_life, 0, xhp, 20);
		xhp += 30;
	}
}

//smoke effect when increase life
if(lifeUp){
	lifeUp = false;
	x_position = camera_get_view_x(view_camera[0]) + 30 + 30 * global.hp;
	effect_create_above(ef_firework, x_position, 20, 2, c_yellow);
}

if(room != title && !instance_exists(obj_pause_button)){ 
	pause = instance_create_layer(0, 0, "Instances", obj_pause_button);
}
