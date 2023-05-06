function scr_amber_enter_building() {
	if(keyboard_check(vk_space)){
	if(instance_exists(obj_reinard_rav)){
	if(instance_position(x,y-64,obj_reinard_rav)>=0){
	global.phase=PHASES.reinardShop
	moveable=0
	scr_goto_room(room_shop)
	}
	}
	}

	if(keyboard_check(vk_space) and room!=room_sakura_daycare){
	if(instance_exists(obj_sakura)){
	if(instance_position(x,y-64,obj_sakura)>=0){
	global.phase=PHASES.Sakuradaycareentrancehall 
	moveable=0
	scr_goto_room(room_sakura_daycare)
	}
	}
	}


}
