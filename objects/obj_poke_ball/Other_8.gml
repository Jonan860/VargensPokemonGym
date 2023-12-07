
with(owner.active_pokemon) {
	if(owner.active_pokemon == global.amber.active_pokemon) {scr_create_move_buttons()}
	active = 1
	visible = 1
	action_bar += max_action_bar / 2
}
scr_turn_decision()
instance_destroy()


