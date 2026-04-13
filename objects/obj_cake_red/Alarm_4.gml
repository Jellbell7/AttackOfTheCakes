/// @description fire
// You can write your code in this editor
// flip position

animation_switch = 0;
wait = false;
//var distance = sign(obj_daughter.x - x);
// - JG 3/15/24, added a proximity distance for fireballs. 
if (distance <= 700){
	var poison = instance_create_layer(x, y-20, "Instances", obj_cake_red_poison);
			audio_play_sound(snd_poison, 1, false);
			poison.damage = atk;
			poison.speed = poison.spd;
			poison.direction = point_direction(x, y, obj_daughter.x, obj_daughter.y);
}
//if (obj_daughter.x > x && image_xscale != image_xscale * -1) {
	//		image_xscale = image_xscale* -1;
	//	}
