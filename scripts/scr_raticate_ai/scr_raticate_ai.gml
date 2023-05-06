function scr_raticate_ai() {
	var target=getOpponent()
	if(superFang.pp>0){global.move = superFang}
	else{ 
		var opponentDefenceBonus=target.defence_bonus
		if(opponentDefenceBonus>-5){global.move=choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack)}
		else{global.move=quickAttack}
}
}