
if(!scrContains(room, room_inventory, room_husmusen, room_jansson, room_teddy_match)) {
	global.phase = PHASES.inventory
	world_x = x; world_y = y
	scr_goto_room(room_inventory)
} else if(room == room_inventory) {
	global.phase = PHASES.world
	scr_goto_room(global.last_room)
}
