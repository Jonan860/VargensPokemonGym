
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.electric
damage = 1
name = "Raichu"
global.raichu = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
thunder = new moveConstruct(MOVES.thunder)
thunderShock = new moveConstruct(MOVES.thundershock)
ds_list_add(movesList,thunder,thunderShock)
xstart = x; ystart = y;
scr_ai = function() {
	global.move = thunder.pp > 0 ? thunder : thunderShock
}
