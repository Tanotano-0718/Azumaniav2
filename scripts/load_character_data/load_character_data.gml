/// @function create_character(_character, _type, _name)
/// @param _character  ステータスを割り当てるキャラクターオブジェクトのインスタンスID
/// @param _type  キャラクターのタイプ ("player" または "enemy")
/// @param _name  キャラクターの名前 

function load_character_data(argument0, argument1, argument2){
var _character = argument0;
var _type = argument1;
var _name = argument2;

// グローバル変数からステータスマップを取得
var status_map = global.status_data;

// タイプ (_type) のマップが存在するか確認
if (ds_map_exists(status_map, _type)) {
    status_map = status_map[? _type]; // タイプごとのマップを取得

    // キャラクター名 (_name) のステータスが存在するか確認
    if (ds_map_exists(status_map, _name)) {
        var char_status = status_map[? _name]; // キャラクターごとのステータスを取得

        // ステータスをオブジェクトに割り当てる
        _character.hp = char_status[? "hp"];
        _character.atk = char_status[? "atk"];
        _character.spd = char_status[? "spd"];
    } else {
        show_debug_message("Error: Character '" + _name + "' not found in status data.");
        return false; // 失敗を示す値を返す
    }
} else {
    show_debug_message("Error: Character type '" + _type + "' not found in status data.");
    return false; 
}

return true;
}