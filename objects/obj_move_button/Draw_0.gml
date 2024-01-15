draw_self()

scrSetContrastingTextColor()
if(owner.ppMax > 0) {
	draw_text(x - sprite_xoffset + sprite_width + 16, y - sprite_yoffset + sprite_height/2, "PP = " + string(owner.pp))
}
if (info) {
	draw_sprite(info_bubble, 0, x - sprite_xoffset + sprite_width, y - sprite_get_height(info_bubble))
}
draw_set_color(c_green)

