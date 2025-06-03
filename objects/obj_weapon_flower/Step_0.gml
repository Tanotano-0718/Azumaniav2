if(!instance_exists(obj_azuma_parent)){
	instance_destroy(self);
}else{
	speed = 20;
	move_towards_point(target.x, target.y, speed);
}