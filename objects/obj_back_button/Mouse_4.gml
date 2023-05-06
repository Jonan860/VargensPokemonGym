if(visible){
if(global.last_room=room_skalman or room=room_shop and global.last_room=room_inventory){
global.phase=PHASES.world
global.amber.moveable=1
global.amber.visible=1
with(obj_reinard_rav){ persistent = 0}
scr_goto_room(room_skalman)
}
else{
	if(global.phase == PHASES.sell) global.phase = PHASES.reinardShop
	scr_goto_room(global.last_room)}
}