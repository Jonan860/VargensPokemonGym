
if(global.phase != "wait") {
	image_xscale *= -1
	alarm_counter -= 1
	if (alarm_counter > 0) {
		alarm[0] = 5
	} else {
		scr_turn_decision()
	}
}
else{
	event_inherited()
}

