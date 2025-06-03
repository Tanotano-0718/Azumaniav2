///@description あずまの選択
if(!instance_exists(obj_tutorial_arrow)){
	instance_create_depth(obj_button_flame.x, obj_button_flame.y - 100, -900, obj_tutorial_arrow);
	instance_create_depth(obj_tutorial_arrow.x, obj_tutorial_arrow.y - 100, -900, obj_tutorial_text);
	obj_tutorial_text.tutorial_text = "生成したい\n'あずま'をえらぼう！";
}

if(obj_cursor._genetate != -1){
	alarm[1] = 1;
}else{
	alarm[0] = 1;
}