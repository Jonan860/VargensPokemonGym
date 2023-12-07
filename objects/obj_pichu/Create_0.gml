
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.electric
damage = 1
name = "Pichu"
global.pichu = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
charm = new moveConstruct(MOVES.charm)
thunderShock = new moveConstruct(MOVES.thundershock)
ds_list_add(movesList, charm, thunderShock)
xstart = x; ystart = y;
scr_ai = function() {
	var target = getOpponent()
	global.move = target.attack_bonus > -5 and charm.pp > 0 ? charm : thunderShock
}
