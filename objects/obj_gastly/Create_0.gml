
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.ghost
damage = 1
name = "Gastly"
global.gastly = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
hypnosis = new moveConstruct(MOVES.hypnosis)
nightmare = new moveConstruct(MOVES.nightmare)
lick = new moveConstruct(MOVES.lick)
ds_list_add(movesList, hypnosis, nightmare, lick)
xstart = x; ystart = y;
scr_ai = function() {
var target = getOpponent()
global.move = (!target.asleep.applied and hypnosis.pp) > 0 ?
	hypnosis
	: (target.asleep.applied and !target.nightmared.applied ?
		nightmare
		: lick)
}
