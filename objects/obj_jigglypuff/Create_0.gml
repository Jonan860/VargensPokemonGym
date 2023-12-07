
event_inherited()

max_HP = 120
HP = 120
type = ELEMENTALTYPES.normal
damage = 1
name = "Jigglypuff"
global.jigglypuff = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
sing = new moveConstruct(MOVES.sing)
defenceCurl = new moveConstruct(MOVES.defenceCurl)
tackle = new moveConstruct(MOVES.tackle)
ds_list_add(movesList, defenceCurl, tackle, sing)
xstart = x; ystart = y;
scr_ai = function() {
	if(sing.pp = sing.ppMax) {global.move = sing}
	else if(sing.pp = 1 and defenceCurl.pp > 0 and defence_bonus<5) {global.move = defenceCurl}
	else if(sing.pp = 1 and (defenceCurl.pp = 0 or defence_bonus = 5)) {global.move = sing}
	else if(sing.pp = 0 and (defenceCurl.pp =0  or defence_bonus = 5)) {global.move = tackle}
}

defenceCurlSprite = spr_jigglypuff_defence_curl

