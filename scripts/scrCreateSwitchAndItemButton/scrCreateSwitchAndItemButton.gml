
function scrCreateSwitchAndItemButton() {
	instance_create_depth(800, room_height / 8 - sprite_get_height(spr_switch), 0, obj_switch_pokemon_button)
	instance_create_depth(800, room_height / 8, 0, obj_item_button_choose)
}
