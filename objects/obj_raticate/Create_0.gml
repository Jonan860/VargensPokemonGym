
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.normal
damage = 1
name = "Raticate"
global.raticate = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
xstart = x; ystart = y
superFang = new moveConstruct(MOVES.superFang)
quickAttack = new moveConstruct(MOVES.quickAttack)
tailWhip = new moveConstruct(MOVES.tailWhip)
ds_list_add(movesList, superFang, quickAttack, tailWhip)
scr_ai = function() {
	var target = getOpponent()
	var opponentDefenceBonus = target.defence_bonus
	var randMove = choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack)
	global.move = superFang.pp > 0 ? superFang :
		(opponentDefenceBonus > -5 ? randMove : quickAttack)
}
