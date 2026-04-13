/// @description Insert description here
// You can write your code in this editor


// Decrement red enemy health by bullet's damage amount.
//other.hp -= damage;

// Destroy this bullet and call the Destroy event.
audio_play_sound(snd_daughter_damage, 1, false);
instance_destroy(id, true);
global.hp --;

//instance_destroy(obj_daughter);