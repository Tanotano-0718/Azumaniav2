/// @description あずまの配置

obj_tutorial_arrow.x = room_width/2;
obj_tutorial_arrow.y_base = room_height/3;
obj_tutorial_text.tutorial_text = "フィールド上にあずまを\n配置しよう";


if(instance_exists(obj_azuma_parent)){
	alarm[2] = 1;
}else{
	alarm[1] = 1;
}
