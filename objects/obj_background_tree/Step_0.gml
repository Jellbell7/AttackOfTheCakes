/// @description Insert description here
// You can write your code in this editor
//get obj_daughter's spd
xscrollspeed = (camera_get_view_x(view_camera[0]) - view_prev) 
view_prev = camera_get_view_x(view_camera[0]);
if(instance_exists(obj_daughter)){
x += xscrollspeed/2;
}