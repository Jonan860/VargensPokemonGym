function scr_meowth_ai() {
	var target=getOpponent()
	if(target.attack_bonus>-5){ global.move=choose(growl,scratch,scratch)}
	else{global.move=scratch}
	}
