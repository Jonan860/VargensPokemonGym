
if(global.turn==TURNS.Amber and global.phase==PHASES.choosing){
global.move=owner
var selfPoke=global.amber.active_pokemon
	
	with(owner){if((pp>0 or ppMax=0) and willHaveAnEffect()){
global.phase = PHASES.statusAilment
with(selfPoke) scr_perform_status_ailment()
}
}}
else{audio_play_sound(sound_error_button,0,0)}
