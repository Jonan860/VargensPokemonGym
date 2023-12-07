if(room != room_inventory) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)	
	if(draw_name){draw_text_color(x, y, name + " " + string(struct.price) + "$", c_black, c_black, c_black, c_black, 1)}
}

if(room = room_inventory) {
	old_color = draw_get_color()
	draw_set_color(c_teal)
	old_halign = draw_get_halign()
	draw_set_halign(fa_left)
	draw_text(x, y + sprite_height, name)
	draw_set_color(old_color)
	draw_set_halign(old_halign)

	if(struct.count > 0) {
		old_color = draw_get_color()
		draw_set_color(c_teal)
		old_halign = draw_get_halign()
		if(selected){draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1)}
		else{draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)}
		draw_text(x, y, string(struct.count))
		draw_set_color(old_color)
		draw_set_halign(old_halign)
	}
}

