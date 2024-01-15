scrSetContrastingTextColor()
if(room != room_inventory) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)	
	if(draw_name) {
		depth -= 1
		var varText = name + " : " + string(struct.price) + "$"
		draw_text_ext_transformed_color(room_width - 2 * string_width("Full Heal : 200$"), 2 * string_height("L"), varText
		, string_height(name) , 200 , 1.5, 1.5, 0, c_lime, c_lime, c_lime, c_lime, 1)
		depth += 1	
	}
}

if(room = room_inventory) {
	draw_set_halign(fa_left)
	draw_text(x, y + sprite_height, name)
	resetDrawAlign()

	if(struct.count > 0) {
		if(selected){draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1)}
		else{draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)}
		draw_text(x, y, string(struct.count))
		resetDrawAlign()
	}
}
draw_set_color(c_green)

