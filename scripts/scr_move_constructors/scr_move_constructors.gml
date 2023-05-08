
function scrMove(
animator_,sound_=sound_growl,button_=noone,
damage_=0, elementalType_=ELEMENTALTYPES.normal,scrEffect_=moveDamageEffect, ppMax_=0
, scrStart_=scr_perform_start,scrEnd_=moveEnd,critChance_=7.5,accuracy_=1
,damageParadigm_=DAMAGEPARADIGMS.normal, scrMissEffect_=doNothing, willHaveAnEffect_=function(){return 1}) constructor{
	animator = animator_
	ppMax=ppMax_
	pp=ppMax_
	button=button_
	sound=sound_
	damage=damage_
	critChance=critChance_
	elementalType=elementalType_
	accuracy=accuracy_
	scrEffect = method(undefined,scrEffect_)
	scrMissEffect = method(undefined, scrMissEffect_)
	scrStart = method(undefined,scrStart_)
	scrEnd = method(undefined,scrEnd_)
	checkForHit = method(undefined,check_for_hit)
	damageParadigm=damageParadigm_
	getOpponent = function(){return owner.getOpponent()}
	opponent=noone
	owner=other.id
	willHaveAnEffect=willHaveAnEffect_
	load = function(struct){pp = struct.pp}
}

#macro STANDARD_MOVEDAMAGE 20


function constructVineWhip() {return new scrMove(obj_vine_whip_animation,sound_vine_whip,obj_wine_whip_button,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.grass,,,,,,,,,)}
function constructSuperFang(){return new scrMove(obj_super_fang_animation,sound_scratch,,50,, scrEffectSuperFang,2,,,,,DAMAGEPARADIGMS.percentage,,)}
function constructBubble(){return new scrMove(obj_bubble_animation,sound_bubble,obj_bubble_button,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.water,,,,,,,,,)}
function constructEmber(){return new scrMove(obj_ember_animation,sound_ember,obj_ember_button,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.fire,,,,,,,,,)}
function constructQuickAttack(){return new scrMove(obj_quick_attack_animation,sound_hit,,10,,quickAttackEffect,,,,,,,,)}
function constructThunder(){return new scrMove(obj_thunder_animator,sound_thunder, obj_thunder_button,8,ELEMENTALTYPES.electric,,1,thunderStart,,,,DAMAGEPARADIGMS.riddles,,)}
function constructTailWhip(){return new scrMove(obj_tail_whip_animation,sound_tail_whip, obj_tail_whip,,,tailWhipEffect,5,,,,,,defenceDebufferWillHaveEffect)}
function constructGrowl(){return new scrMove(obj_growl_animation,sound_growl,obj_growl_button,,,scrGrowlEffect,5,,,,,,,attackDebufferWillHaveEffect)}
function constructPsyCutter(){return new scrMove(obj_psy_cutter_animation,sound_psy_cutter,obj_psy_cutter_button,40,ELEMENTALTYPES.psychic,,,,,,,,,)}
function constructLeer(){return new scrMove(obj_leer_animation,sound_leer,obj_leer_button,,,scrLeerEffect,5,,,,,,,defenceDebufferWillHaveEffect)}
function constructRockThrow(){return new scrMove(obj_rock_throw_animation,sound_rock_throw,obj_rock_throw_button,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.rock,,,,,,,,,)}
function constructThunderShock(){return new scrMove(obj_thundershock_animation,sound_thundershock, obj_thundershock_button,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.electric,,,,,,,,,)}
function constructDefenceCurl(){return new scrMove(obj_defence_curl_animation,sound_defence_curl,obj_defence_curl_button,,,scrDefenceCurlEffect,5,,,,,,scrDefenceCurlEffect,defenceBufferWillHaveEffect)}
function constructRollout(){var roll = new scrMove(obj_rollout_animation,,,STANDARD_MOVEDAMAGE/2,,rolloutEffect,,,,,ELEMENTALTYPES.rock,,rolloutMissEffect,)
	roll.bonus=1
	return roll
	}
function constructCharm(){return new scrMove(obj_charm_animator,sound_charm,,,,charmEffect,2,,,,,,,attackDebufferWillHaveEffect)}
function constructScratch(){return new scrMove(obj_scratch_animation,sound_scratch,,STANDARD_MOVEDAMAGE,,moveDamageEffect,,,,,,,,)}
function constructDreamEater(){return new scrMove(obj_dreameater_animation,,,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.psychic,dreamEaterEffect,,,,,,,,function(){return getOpponent().sleep.applied})}
function constructHypnosis(){return new scrMove(obj_hypnosis_animation,sound_hypnosis,,,,scrHypnosisEffect,3,,,,,,, function(){return !getOpponent().sleep.applied})}
function constructNightmare(){return new scrMove(obj_nightmare_animation,sound_nightmare,,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.ghost,function(){getOpponent().nightmared.applied=true},,,,,,DAMAGEPARADIGMS.percentage,,function(){return getOpponent().sleep.applied})}
function constructAmnesia(){return new scrMove(obj_amnesia_animation,,,,,amnesiaEffect,2,,,,,,amnesiaEffect,amnesiaWillHaveEffect)}
function constructSing(){return new scrMove(obj_sing_animation,sound_sing,,,,scrSingEffect,2,,,,,,,function(){return !getOpponent().sleep.applied})}
function constructtackle(){return new scrMove(obj_tackle_animation,sound_hit,,STANDARD_MOVEDAMAGE,,moveDamageEffect,,,,,,,,)}
function constructLick(){return new scrMove(obj_lick_animation,sound_lick,,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.ghost,lickEffect,,,,,,,,)}
function constructConfusion(){ return new scrMove(obj_confusion_animation,,,STANDARD_MOVEDAMAGE,ELEMENTALTYPES.psychic,confusionEffect,,,,,,,,)}
function constructSandAttack(){return new scrMove(obj_sand_attack_animation,,,,,scrSandAttackEffect,5,,,,,,,accuracyDebufferWillHaveEffect)}
function scr_perform_start(){  //default
pp-=sign(ppMax)
owner.action_bar=owner.max_action_bar
opponent=getOpponent()
var miss=!checkForHit(opponent)
global.phase=!miss*PHASES.attackHit+miss*PHASES.attackMiss
audio_play_sound(sound,0,0) //might turn of background
audio_pause_sound(global.background_music)
var varAnimator=instance_create_depth(owner.x,owner.y,0,animator)
with(varAnimator){
struct=other
x+=Xtranslation*sign(opponent.x-struct.owner.x)
y+=Ytranslation*sign(opponent.y-struct.owner.y)
}
}

function thunderStart(){
if(owner.owner=global.amber){
number_correct_answer=0
global.phase=PHASES.attackHit
var riddle=instance_create_depth(room_width/2,room_height/2,0,obj_riddle_bar)
with(riddle){owner=other}
audio_pause_sound(global.background_music)
audio_play_sound(sound_na_na_na_thunder,0,0)
}
else{
number_correct_answer=choose(4,5,6,7,8)
scr_perform_start()
}
}

function doNothing(){}

function scrEffectSuperFang(){
	var opponent= getOpponent()
	opponent.HP-=max(opponent.HP/2,1)
}

function quickAttackEffect(){
owner.action_bar-=owner.max_action_bar/2
moveDamageEffect()
}

function confusionEffect(){
	moveDamageEffect()
	if(random(100) < 32){opponent.confused.apply()}
}
	
function charmEffect(){opponent.attack_bonus=max(-5,opponent.attack_bonus-2)}
function scrDefenceCurlEffect(){owner.defence_bonus=min(owner.defence_bonus+1,5)}
function scrHypnosisEffect(){if(irandom(99)<66){scr_put_to_sleep(opponent)}}
function scrGrowlEffect(){opponent.attack_bonus=max(opponent.attack_bonus-1,-5)}
function scrLeerEffect(){opponent.defence_bonus=max(opponent.defence_bonus-1,-5)}
function moveDamageEffect(){opponent.HP-=damage_calculate(opponent)}
function tailWhipEffect(){opponent.defence_bonus=max(opponent.defence_bonus-1,-5)}
function scrSandAttackEffect(){with(opponent){accuracy_bonus=max(accuracy_bonus-1,-5)}}
function scrSingEffect(){scr_put_to_sleep(opponent)}

	
function dreamEaterEffect(){
var damage=damage_calculate(opponent)
	opponent.HP-=damage
	owner.HP=min(damage+owner.HP,owner.max_HP)
}
	
function amnesiaEffect(){
with(owner){
defence_bonus=(min(defence_bonus+1,5))
attack_bonus=(min(attack_bonus+1,5))
}}

function lickEffect(){
	moveDamageEffect()
	if(irandom(100)<33){opponent.paralyzed.applied=1}
}

function rolloutEffect(){
	owner.damage*=bonus
	moveDamageEffect()
	owner.damage/=bonus
if(bonus<32){bonus*=2}else{bonus=1}
}
function rolloutMissEffect(){bonus=1}


function moveEnd(){
audio_resume_sound(global.background_music)
var isAmbersTurn= global.turn==TURNS.Amber
owner.x=real(!isAmbersTurn)*opponent_x+real(isAmbersTurn)*match_x
owner.y=real(!isAmbersTurn)*opponent_y+real(isAmbersTurn)*match_y
owner.speed=0
switch(global.phase){
case PHASES.attackHit: scrEffect(); break;
case PHASES.attackMiss: scrMissEffect(); break;
}
scr_turn_decision()
}

function attackDebufferWillHaveEffect(){return getOpponent().attack_bonus>-5}
function attackBufferWillHaveEffect(){return owner.attack_bonus<5}
function defenceBufferWillHaveEffect(){return  owner.defence_bonus<5}
function defenceDebufferWillHaveEffect(){return getOpponent().defence_bonus>-5}
function accuracyDebufferWillHaveEffect(){return getOpponent().accuracy_bonus>-5}
function amnesiaWillHaveEffect(){return owner.attack_bonus<5 or owner.defence_bonus<5}













