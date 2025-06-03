if(x == obj_pointer.x && y == obj_pointer.y){
	var _rm = asset_get_index("rm_stage" + stage_text);
	audio_play_sound(sound_goroom, 1, false);
	room_goto(_rm);
}


if(instance_exists(obj_pointer)){
	obj_pointer.x = x;
	obj_pointer.y = y;
	audio_play_sound(sound_click, 1, false);
}