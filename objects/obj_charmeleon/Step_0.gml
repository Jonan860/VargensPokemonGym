event_inherited()
if(active and global.turn==TURNS.enemy and global.phase==PHASES.attack)
{
global.phase=PHASES.attack
var n=choose(0,1,1,1)
if(n){
var ember=instance_create_depth(x+250,y+80,0,obj_ember)
with(ember){
damage=STANDARD_MOVEDAMAGE
miss=0
image_angle+=180
}
}
else if(n==0){
global.current_self.defence_bonus=max(global.current_self.defence_bonus-1,-5)
audio_play_sound(sound_tail_whip,0,0)
alarm[1]=2
image_xscale*=-1
alarm_counter=5
alarm[0]=5;
}
}


