/// @description Insert description here
// You can write your code in this editor


draw_text(10, 50, "Lives: " + string( global.hp));


// game over
if (global.hp <= 0){
	
	if(room == Room2){
		draw_text(600, 300, "Game Over You Lost ");
		instance_deactivate_all(true);
		
	}
	
}