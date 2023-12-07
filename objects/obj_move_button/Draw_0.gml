draw_self()
if(owner.ppMax > 0) {
	draw_text(x + sprite_width / 2 + 16, y + string_height("PP"), "PP = " + string(owner.pp))
}
if (info) {
	draw_sprite(info_bubble, 0, x + sprite_width / 2, y - sprite_get_height(info_bubble))
}

