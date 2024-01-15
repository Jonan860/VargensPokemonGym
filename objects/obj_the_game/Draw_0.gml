scrSetContrastingTextColor()
if (room == room_inventory) {
	var	varString = "Money = " + string(global.amber.money)
	var scaling = 4
	draw_text_ext_transformed(room_width / 2
	 - scaling * string_width(varString), room_height - 1.3 * string_height(varString) * scaling ,
	varString , 1000, 1000,   scaling, scaling, 0)
}
draw_set_color(c_green)