function scr_pichu_ai() {
	var target=getOpponent()
	if(target.attack_bonus>-5 and charm.pp>0){global.move=charm}
	else{global.move = thunderShock}
}
