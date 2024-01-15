if(startPath) {
	path_start(path_amnesia, 10, path_action_stop, 0)
	startPath = false
}
age += 1
if(age = room_speed / 2 and number < 4) {
	var varamnesia = instance_create_depth(xstart, ystart, 0, obj_amnesia_animation)
	varamnesia.struct = struct
}

if(age = room_speed * 2){instance_destroy()}

