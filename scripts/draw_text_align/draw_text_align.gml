///@param x
///@param y
///@param valine
///@param haline
///@param text
///@param font
///@param color
function draw_text_align(argument0, argument1, argument2, argument3, argument4, argument5) {

	var _xpos = argument0;
	var _ypos = argument1;
	var _valine = argument2;
	var _haline = argument3;
	var _text = argument4;
	var _font = argument5;
	var _color = argument6;


draw_set_font(_font);
draw_set_color(_color);

draw_set_halign(_haline);
draw_set_valign(_valine);

draw_text(_xpos, _ypos, _text);
}
