scrSetContrastingTextColor()
if(keyboard_check(vk_home)) {
	operaTextEraser()
	draw_text(room_width / 2, room_height / 2, keyboard_string)
}
draw_set_color(c_green)