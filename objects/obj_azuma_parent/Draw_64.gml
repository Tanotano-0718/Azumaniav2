// HPバーの位置とサイズを設定
var bar_padding = 10;
var bar_width = sprite_width - bar_padding*2;
var bar_height = 8;
var bar_x = x - sprite_width + bar_padding;
var bar_y = y - sprite_height/2 - 10;

// HPの割合を計算
var hp_ratio = hp / max_hp;

// 背景の描画 (グレー)
draw_rectangle_color(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, c_gray, c_gray, c_gray, c_gray, false);

// HPバーの描画 (緑)
draw_rectangle_color(bar_x, bar_y, bar_x + bar_width * hp_ratio, bar_y + bar_height, c_lime, c_lime, c_lime, c_lime, false);
