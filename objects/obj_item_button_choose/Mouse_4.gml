
if(global.turn == TURNS.Amber) {
	if(global.phase == PHASES.choosing ) {
	
		with(global.amber) {
			for(var i = 0; i < ds_list_size(potionBag); i++) {
				var varitem = ds_list_find_value(potionBag, i)
				with(varitem) {
					if(count > 0 and !instance_exists(object)) {
						instance_create_depth(500, 600 - 30 * i, 0, button)
					}
				}
			}
		}

		global.phase = PHASES.chooseItem

	} else if(global.phase == PHASES.chooseItem) {
		with(obj_item_buttons) {instance_destroy()}

		global.phase = PHASES.choosing
	}

}