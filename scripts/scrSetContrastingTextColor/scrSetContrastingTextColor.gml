function scrSetContrastingTextColor() {
	switch(room) {
		case room_teddy_match : draw_set_color(c_red); break;
		case room_jansson : draw_set_color(c_blue); break;
		case room_husmusen : draw_set_color(c_black); break;
		case room_inventory : draw_set_color(c_teal); break
		case room_sakura_daycare : draw_set_color(c_white); break;
	}
}