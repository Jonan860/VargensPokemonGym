
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.ground
damage = 1
name = "Sandshrew"
global.sandshrew = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
sandAttack = new moveConstruct(MOVES.sandAttack)
scratch = new moveConstruct(MOVES.scratch)
ds_list_add(movesList, sandAttack, scratch)
xstart = x; ystart = y;
scr_ai = function() {
	var target = getOpponent()
	global.move = target.accuracy_bonus > -5 and sandAttack.pp > 0 ? choose(sandAttack,sandAttack,scratch) : scratch
}

