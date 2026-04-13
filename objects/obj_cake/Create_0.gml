/// @description cake constructor
// You can write your code in this editor

event_inherited();

spd = 1;
hp = 20;
hsp = 0;
vsp = 0;
dir = -1;
grav = 0.2;

move_x = 0;
move_y = 0;
my_tilemap = layer_tilemap_get_id("collision_tiles");

global.enemies_killed = 0;
