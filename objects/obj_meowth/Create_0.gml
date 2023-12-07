event_inherited()
max_HP = 120;
HP = 120;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.normal
damage = 1
defence = 0.8
max_action_bar = 80
action_bar = 0
name = "Meowth"
global.meowth = id
alive = 1
xstart = x; ystart = y
sound = sound_snorlax
growl = new moveConstruct(MOVES.growl)
scratch = new moveConstruct(MOVES.scratch)
ds_list_add(movesList, growl, scratch)
scr_ai = function() {
	var target = getOpponent()
	global.move = target.attack_bonus > -5 ? choose(growl, scratch, scratch) : scratch
}
