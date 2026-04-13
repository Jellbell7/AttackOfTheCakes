// function in case we want to have a way for the daughter to switch her weapon as she collects them!
function player_switch_weapon(weapon){
	if (weapon == "yarn"){
		obj_daughter.has_grenade = false;
		obj_daughter.has_laser = false;
		
		obj_daughter.has_yarn = true;
		
	}else if (weapon == "laser"){
		obj_daughter.has_yarn = false;
		obj_daughter.has_grenade = false;
		
		obj_daughter.has_laser = true;
		
	}else if (weapon == "grenade"){
		obj_daughter.has_yarn = false;
		obj_daughter.has_laser = false;
		
		obj_daughter.has_grenade = true;
	}
		
}