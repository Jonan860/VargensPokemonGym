
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_self()
switch(global.player) {
	case PLAYERS.Ida : 
		var str = n + "+" + m; break;
	case PLAYERS.Nils : 
		var str = string(abs(5 - real(n))) + "+" + string(abs(5 - real(m))); break;
	case PLAYERS.Jonathan :
		draw_text_transformed(x, y - 100, string_hash_to_newline(string(timer)), 2, 2, 0);
		var str = "(" + string(10 * real(n) + real(m)) + ")^2"; break;
}
draw_text_transformed(x, y, string_hash_to_newline(keyboard_string), 2, 2, 0);
draw_text_transformed(x, y - 50, string_hash_to_newline(str), 2, 2, 0);
	
draw_set_halign(fa_top)
draw_set_valign(fa_left)

