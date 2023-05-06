function scr_marill_ai() {
	if(defenceCurl.pp>0 and defence_bonus<2){global.move = defenceCurl}
	else{global.move = rollout}
}