event_inherited()
//attacker är psybeam sandattack psych-up
max_HP = 96
HP = 96
type = ELEMENTALTYPES.psychic
damage = 1.2
name = "Espeon"
global.espeon = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sandAttack = new moveConstruct(MOVES.sandAttack)
confusion = new moveConstruct(MOVES.confusion)
ds_list_add(movesList, sandAttack, confusion)
scr_ai = function() {
	global.move = global.amber.active_pokemon.accuracy_bonus > -5 and sandAttack.pp > 0 ?
	choose(sandAttack, sandAttack, confusion)
	: confusion
}

