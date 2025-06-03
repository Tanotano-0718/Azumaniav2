if(hp < 0){
	instance_destroy(self);
}else if(hp > max_hp){
	hp = max_hp;
}