
function save_game(saveStruct = global.saveData) {
	saveStruct._global = {
		phase : global.phase,
		turn : global.turn,
		background_music : global.background_music,
		enemy : global.enemy,
		last_room : global.last_room,
		move : global.move,
		saveBeforeBattle : global.saveBeforeBattle
	}
	
	global.amber.save()

	with(obj_jansson){save()}
	with(obj_husmusen){save()}
	with(obj_teddy){save()}

	saveStruct._room = room_get_name(room)

	var vararray = array_create(0)

	array_push(vararray, saveStruct)

	var json = json_stringify(vararray)
	var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1)
	buffer_write(buffer, buffer_string, json)
	buffer_save(buffer, keyboard_string + ".sav")

	buffer_delete(buffer)
}




function save_game_before_battle() {
	global.saveBeforeBattle._global = {
		phase : global.phase,
		turn : global.turn,
		background_music : global.background_music,
		enemy : global.enemy,
		last_room : global.last_room,
		move : global.move
	}
	
	global.amber.save(global.saveBeforeBattle)

	with(obj_jansson){save(global.saveBeforeBattle)}
	with(obj_husmusen){save(global.saveBeforeBattle)}
	with(obj_teddy){save(global.saveBeforeBattle)}

	global.saveBeforeBattle._room = room_get_name(room)
}
