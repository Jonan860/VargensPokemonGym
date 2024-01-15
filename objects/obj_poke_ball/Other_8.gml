
with(owner.active_pokemon) {
	if(id == global.amber.active_pokemon) {scr_create_move_buttons()}
	active = 1
	visible = 1
}
scr_turn_decision()
instance_destroy()


