if(!instance_exists(obj_enemy_parent)){
	instance_destroy(self);
}else{
	speed = 15;
	target = instance_nearest(x, y, obj_enemy_parent);
	move_towards_point(target.x, target.y, speed);
}