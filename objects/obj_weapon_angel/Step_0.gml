if(!instance_exists(obj_enemy_parent)){
	instance_destroy(self);
}else{
	if(target != noone && image_index == 4){
		image_speed = 0;
		speed = 5;
		move_towards_point(target.x, target.y, speed);
	}
}


