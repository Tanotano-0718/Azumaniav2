/// @param text
function update_button_width(argument0){
	var text = argument0
	var padding = 40;
	draw_set_font(fnt_menu);
	var text_width = string_width(text);
	if(sprite_width > 0){
		image_xscale = (text_width + padding) / sprite_width
	}else{
		image_xscale = 1;
	}
}