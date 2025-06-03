gpu_set_blendenable(false);

if(global.pause){
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf)) draw_surface(pauseSurf, 0, 0);
	else{
		pauseSurf = surface_create(room_width, room_height);
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	surface_reset_target();
}