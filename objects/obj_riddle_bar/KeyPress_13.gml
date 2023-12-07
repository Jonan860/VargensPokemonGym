
switch (global.player) {
	case PLAYERS.Ida : 
		if(keyboard_string != "" and string_digits(keyboard_string) == keyboard_string) {
			keyboard_string = ""
			number_correct_answer += real(n) + real(m) == real(string_digits(keyboard_string)) ? 1 : -1
		}
		n = choose("1","2","3","4","5","6","7","8","9","0")
		m = choose("1","2","3","4","5","6","7","8","9","0")
		break;

	case PLAYERS.Nils :
		keyboard_string = ""
		global.phase = abs(5 - real(n)) + abs(5 - real(m)) == real(keyboard_string) ? PHASES.attackHit : PHASES.attackMiss
		instance_destroy()
		break;

	case PLAYERS.Jonathan :
		global.phase = (10 * real(n) + real(m)) * (10 * real(n) + real(m)) == real(keyboard_string) ? PHASES.attackHit : PHASES.attackMiss
		keyboard_string = ""
		instance_destroy()
		break;
}