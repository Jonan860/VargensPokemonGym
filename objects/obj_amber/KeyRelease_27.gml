
if(room!=room_inventory and room!=room_husmusen and room!=room_jansson and room!=room_teddy_match){
	global.phase=PHASES.inventory
scr_goto_room(room_inventory)
}
else if(room=room_inventory){
	global.phase=PHASES.world
scr_goto_room(global.last_room)
}
