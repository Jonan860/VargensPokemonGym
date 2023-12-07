
function scr_create_move_buttons(rom = room) {
	for(var i = 0; i < ds_list_size(movesList); i++) {
		var move = ds_list_find_value(movesList, i)
		var button = instance_create_depth(200, 500 + 100 * i, 0, move.button)
		button.owner = move
	}
}