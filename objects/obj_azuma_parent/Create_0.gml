var object_name = object_get_name(self.object_index);
var char_name = string_replace(object_name, "obj_", "");

if (!variable_global_exists("global.status_data")) {
    load_status_data();
}

load_character_data(self.id, "player", char_name)


sprite_idle = asset_get_index(string_replace(object_name, "obj", "spr")) ;
sprite_attack = asset_get_index(string_replace(object_name, "obj", "spr_attack"));

sprite_index = sprite_idle;
image_speed = 1;

max_hp = hp;
