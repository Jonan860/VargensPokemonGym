/// @description Insert description here
// You can write your code in this editor
if(thinking){
	if(!audio_is_playing(struct.sound)){
		thinking = 0
		if(struct.symptomatic){audio_play_sound(sound_hit,0,0)}
		}
}
else{if(!audio_is_playing(sound_hit)){instance_destroy()}}