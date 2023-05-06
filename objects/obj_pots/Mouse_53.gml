if(scr_instance_position_sprite(mouse_x,mouse_y,obj_starters)>0 and selected){
	var pokemon=scr_instance_position_sprite(mouse_x,mouse_y,obj_starters)

with(struct){
   owner.active_pokemon=pokemon
	if(appliable()){
		effect()
		count-=1
if(count == 0){instance_destroy()}
		}
		else{audio_play_sound(sound_error_button,0,0)}
}
}
else{selected=position_meeting(mouse_x,mouse_y,id)}


