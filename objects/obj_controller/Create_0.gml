/// @description Insert description here
// You can write your code in this editor

global.hp = 10;
global.score = 0;
lifeUp = false;

seen_opening_cutscene = false;

window_set_size(1300,1000);
haswon = false;

if (room == Forest) {audio_play_sound(snd_forest, 1 , true);}
else if (room == Castle) { audio_stop_sound(snd_forest);
	audio_play_sound(snd_castle, 1, true);}
	else{audio_stop_all();
	}
