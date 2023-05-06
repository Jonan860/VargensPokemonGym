function scr_rattata_ai() {
	var target=getOpponent()
	if(target.defence_bonus>-5){global.move=choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack)}
	else{global.move=quickAttack}
	}