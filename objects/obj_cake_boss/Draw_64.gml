/// @description Insert description here
// You can write your code in this editor
//draw_self();

// 3/16/24
// Jenelle
distance = abs(obj_daughter.x - x);
if (distance <= 700){
	draw_healthbar(
		 300, // x coord of left rectangle
		10, // y coord of top rectangle
		 800, // x coord of right rectangle
		20,  // y coord of bottom rectangle
		100 * (hp / max_hp), 
		c_gray, 
		c_red, 
		c_green,
		0,
		true, 
		false
	);
}
