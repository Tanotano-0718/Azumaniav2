global.battle = true;

if(instance_exists(obj_tutorial_arrow)){
	instance_destroy(obj_battletutorial);
	instance_destroy(obj_tutorial_arrow);
	instance_destroy(obj_tutorial_text);
}