function drawSpeechBubble(xx, yy, txt) {
	draw_sprite_ext(spr_speech_bubble, 0, xx, yy, 1.5 * string_width(txt) / sprite_get_width(spr_speech_bubble), 2 * string_height(txt) / sprite_get_height(spr_speech_bubble), 0, c_white, 1)
	storedValign = draw_get_valign()
	storedHalign = draw_get_halign()
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_color(xx, yy, txt, c_black, c_black, c_black, c_black, 1)
	draw_set_valign(storedValign)
	draw_set_halign(storedHalign)
}