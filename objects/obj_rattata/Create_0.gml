
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.normal
damage = 1
name = "Rattata"
global.rattata = id

defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
xstart = x; ystart = y;
tailWhip = new moveConstruct(MOVES.tailWhip)
quickAttack = new moveConstruct(MOVES.quickAttack)
ds_list_add(movesList, tailWhip, quickAttack)
scr_ai = function () {
	var target = getOpponent()
	global.move = target.defence_bonus >- 5 ? choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack) : quickAttack
}
