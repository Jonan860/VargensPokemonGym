event_inherited()
if(active and global.turn==TURNS.enemy and global.phase==PHASES.attackHit)
{
global.phase=PHASES.attackHit
var n=choose(0,1,1,1)
if(n)//n{
var wine=instance_create_depth(x+200,y+200,0,obj_vine_whip)
with(wine){
damage=STANDARD_MOVEDAMAGE
miss=0
}
}
else if(n==0){
global.current_self.attack_bonus=max(global.current_self.attack_bonus-1,-5)
audio_play_sound(sound_growl,0,0)

var growl=instance_create_depth(x+300,y+300,0,obj_growl)
with(growl){image_angle+=180}
}


