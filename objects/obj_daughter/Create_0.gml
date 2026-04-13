/// @description player creation
// You can write your code in this editor
spd = 4;
hsp = 0;
vsp = 0;

grv = 0.5;

grounded = false;
jump_spd = 10;
canJump = 1;
blink_count = 0;
global.move_ready = true;

in_water = false;

global.lost_life = false;

// weapons being carried
has_yarn = false;
has_laser = false;
has_grenade = false;

//for laser functionality
global.laser_enemy_hit = false;
global.laser_timer_set = false;

// list of enemies that daughter has hit during an attack
hitByAttack = ds_list_create(); 
state = player_state.free;

enum player_state{
	free, 
	attack, 
	attack_laser,
	attack_grenade,
}


ladder = false;

global.move_ready = false;
alarm[3] = room_speed * 0.75;


