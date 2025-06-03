_genetate = asset_get_index(id_azuma);

if(!global.battle){
	if((_genetate != -1) && (global.limit != 0)){
		if(rectangle_in_rectangle(x, y , x, y, 0, 230, room_width, 830) == 1){
			instance_create_depth(x, y, depth, _genetate);
			global.limit --;
		}
	}
}