function scr_background_music() {
	switch(room){
case room_teddy_match: global.background_music=sound_pokemon_jigglypuff; break;
case jansson_husmus_gym: global.background_music=sound_pokemon_start; break;
case room_jansson: global.background_music=sound_pokemon_who_is_stronger; break;
case room_husmusen: global.background_music=sound_pokemon_burning_battle_field; break;
case room_skalman: global.background_music = sound_pokemon_start; break;
case room_shop: if(global.last_room==room_skalman) global.background_music=sound_underworld;break ;
default:  exit;
	}
	if(!audio_is_playing(global.background_music)){
	audio_stop_all()
	audio_play_sound(global.background_music,0,1)
	}
}
