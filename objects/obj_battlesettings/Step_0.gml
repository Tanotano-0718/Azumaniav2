//gameclear
if(global.battle && !instance_exists(obj_enemy_parent)){
	global.battle = false;
	instance_create_depth(room_width/2,room_height/2,global.gui_depth,obj_gameclear);
}

//gameover
if(global.battle && !instance_exists(obj_azuma_parent)){
	global.battle = false;
	instance_create_depth(room_width/2,room_height/2,global.gui_depth,obj_gameover);
}


//whenbattle
if(global.battle){
	with(obj_button_azuma_parent){
		obj_button_azuma_parent.y += 4;
	}
}

