event_inherited()
//attacker är psybeam amnesia          batton-pass genom levling
max_HP = 120
HP = 120
type = ELEMENTALTYPES.psychic
damage = 1
name = "Mew"
global.mew = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
amnesia = new moveConstruct(MOVES.amnesia)
psyCutter = new moveConstruct(MOVES.psyCutter)
ds_list_add(movesList, amnesia, psyCutter)


sound = sound_snorlax
scr_ai = function() {
	global.move = amnesia.pp > 0 ? amnesia : psyCutter
}




