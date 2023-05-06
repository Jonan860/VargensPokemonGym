function scr_sandshrew_ai() {
	var target=getOpponent()
	if(target.accuracy_bonus>-5 and sandAttack.pp>0){global.move=choose(sandAttack,sandAttack,scratch)}
	else{global.move=scratch}
}
