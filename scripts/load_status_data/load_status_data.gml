/// @function load_status_data()
/// @description JSONファイルからステータスデータを読み込む
function load_status_data(){

global.status_data = ds_map_create(); // グローバル変数としてデータマップを作成

var file = file_text_open_read("status.json");
var json_string = "";
while (!file_text_eof(file)) {
    json_string += file_text_readln(file);
}
file_text_close(file);

 global.status_data = json_decode(json_string); // JSONを解析してds_mapに格納
}