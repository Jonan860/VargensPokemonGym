function scr_jigglypuff_ai() {
	if(sing.pp=sing.ppMax) {global.move = sing}
	else if(sing.pp=1 and defenceCurl.pp>0 and defence_bonus<5){global.move = defenceCurl}
	else if(sing.pp=1 and (defenceCurl.pp=0 or defence_bonus=5)){global.move = sing}
	else if(sing.pp=0 and (defenceCurl.pp=0 or defence_bonus=5)){global.move = tackle}
}
