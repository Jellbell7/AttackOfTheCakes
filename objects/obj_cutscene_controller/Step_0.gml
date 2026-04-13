/// @description Insert description here
// You can write your code in this editor
if (scene_no == 1){
	obj_cutscene_text.image_index = 2;
}
if (scene_no == 2){
	obj_cutscene_text.image_index = 3;
	obj_cutscene_father.image_index = 2;
}
if (scene_no == 3){
	obj_cutscene_text.image_index = 4;
	obj_cutscene_father.image_index = 1;
}
if (scene_no == 4){
	obj_cutscene_text.image_index = 5;
	obj_cutscene_father.image_index = 2;
}
if (scene_no == 5){
	obj_cutscene_text.image_index = 6;
	obj_cutscene_father.image_index = 2;
	obj_cutscene_daughter.visible = true;
	obj_cutscene_daughter.image_index = 0;
}

if (scene_no == 6){
	obj_cutscene_text.image_index = 7;
	obj_cutscene_father.image_index = 1;
}

if (scene_no == 7){
	obj_cutscene_text.image_index = 0;
	obj_cutscene_father.image_index = 0;
	obj_cutscene_daughter.image_index = 1;
}

if (scene_no == 8){
	room_goto(Forest);
}

