/// @description Insert description here
// You can write your code in this editor

//check if button is pressed
var hovercheck = point_in_rectangle(mouse_x, mouse_y, camera_get_view_x(view_camera[0]) + 960, 15, camera_get_view_x(view_camera[0]) + 1016, 45); //check if mouse is in a area.
if (hovercheck) { //if the mouse is in the area then then execute below code
    if (mouse_check_button_pressed(mb_left)) {
		instance_deactivate_all(true);
        splash = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, room_height / 2, "Instances", obj_splash);
		splash.depth = -1;
		home = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 - 20, "Instances", obj_home_button);
		resume = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 + 35, "Instances", obj_resume_button);
		restart = 	resume = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 12, room_height / 2 + 90, "Instances", obj_restart_button);
	}
}