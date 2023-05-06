
draw_set_halign(fa_center)
draw_set_valign(fa_center)
//if(global.phase==PHASES.riddle){
	draw_self()
	switch(global.player){
		case "ida": {
draw_text_transformed(x, y, string_hash_to_newline(keyboard_string), 2, 2, 0);
draw_text_transformed(x, y-50, string_hash_to_newline(n+"+"+m), 2, 2, 0);
} break;
case "nils": {
draw_text_transformed(x, y, string_hash_to_newline(keyboard_string), 2, 2, 0);
draw_text_transformed(x, y-50, string_hash_to_newline(string(abs(5-real(n)))+"+"+string(abs(5-real(m)))), 2, 2, 0);
} break;
case "jonathan":{
draw_text_transformed(x, y-100, string_hash_to_newline(string(timer)), 2, 2, 0);
draw_text_transformed(x, y, string_hash_to_newline(keyboard_string), 2, 2, 0);
draw_text_transformed(x, y-50, string_hash_to_newline("("+string(10*real(n)+real(m))+")^2"), 2, 2, 0);
} break;
	}
//}
	
draw_set_halign(fa_top)
draw_set_valign(fa_left)

