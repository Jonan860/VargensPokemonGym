
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.psychic
damage = 1
name = "Drowsee"
global.drowsee = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
hypnosis = new moveConstruct(MOVES.hypnosis)
dreamEater = new moveConstruct(MOVES.dreamEater)
confusion = new moveConstruct(MOVES.confusion)
ds_list_add(movesList, hypnosis, dreamEater, confusion)
xstart = x; ystart = y;
scr_ai = function() {
	var target = global.amber.active_pokemon
	var lessHalf = HP < max_HP/2
	var maxedHP = HP == max_HP
	var sleeped = target.asleep.applied
	global.move = sleeped ?
		(maxedHP ?  confusion : dreamEater)
		: (lessHalf ? hypnosis : confusion)
}


