if(!global.pause){
	global.pause = true;
	instance_deactivate_all(true);
	
	pauseSurf = surface_create(room_width, room_height);
	surface_set_target(pauseSurf);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
	
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	pauseSurfBuffer = buffer_create(room_width * room_height * 4, buffer_fixed, 1);
	buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
}else{
	global.pause = false;
	instance_activate_all();
	if(surface_exists(pauseSurf)) surface_free(pauseSurf);
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
}