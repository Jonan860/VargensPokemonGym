///scr_last_room(room)
function scr_goto_room(newRoom) {
	global.last_room=room
	room_goto(newRoom)
}
