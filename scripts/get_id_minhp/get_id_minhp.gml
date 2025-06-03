/// @param ステータスを割り当てるキャラクターオブジェクトのインスタンスID
function get_id_minhp(argument0){
	var character = argument0;
	var instance_info_list = [];
	with(character){
		if(variable_instance_exists(id, "hp")){
			array_push(instance_info_list, {
				character_id: id,
				character_hp: hp,
				character_maxhp: max_hp
			});
		}
	}
	
	var min_hp_character_id = noone;
	var min_hp_character_rate = 1;
	
	if(array_length(instance_info_list) > 0){
		for(var i = 0; i < array_length(instance_info_list); i++){
			var current_info = instance_info_list[i];
			if(current_info.character_hp/current_info.character_maxhp < min_hp_character_rate){
				min_hp_character_rate = current_info.character_hp;
				min_hp_character_id = current_info.character_id
			}
		}
	}
	return min_hp_character_id;
	
}