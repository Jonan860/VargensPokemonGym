event_inherited()
if(active and global.turn==TURNS.enemy and global.phase==PHASES.attack and sleep==0 and speed==0){
n=1
if((0 < HP) and (HP <= 0.5*max_HP))
{n=choose(0,1)}
if(n){move_towards_point(global.current_self.x,global.current_self.y,10)}
else if(n==0){
sleep=choose(3,4,5)
max_sleep=sleep
}
}
if(active){
audio_stop_sound(sound_witcher)
if(audio_is_playing(sound_red_army)==0 and audio_is_playing(sound_snorlax)==0 and audio_is_paused(sound_red_army)==0 and max_sleep!=sleep)
{audio_play_sound(sound_red_army,0,1)}
}
if(active and global.turn==TURNS.enemy and global.phase==PHASES.attack and sleep>0){
if(sleep==max_sleep){
HP=max_HP
audio_pause_sound(sound_red_army)
}
global.phase=PHASES.asleep
audio_pause_sound(global.background_music)
audio_play_sound(sound_sleep,0,0)
zzz=1
alarm[0]=75
}

if(zzz and sleep=max_sleep){audio_pause_sound(sound_red_army)}





