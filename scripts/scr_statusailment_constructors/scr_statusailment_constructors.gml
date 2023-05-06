
 function scrStatusAilment(sound_=sound_growl,animator_=noone,text_
 ,scrStart_=scrStatusAilmentStandardStart,scrEffect_=ailmentStandardEffect 
 ,scrEnd_=ailmentStandardEnd, apply_ = applySimplest, willAnimate_ = function() {return 0}
 , scrReset_ =  simplestReset) constructor  {
applied = 0
symptomatic = 0
turnsLeft=0
animator=animator_
sound = sound_
text=text_
scrStart = method(undefined,scrStart_)
scrEnd = method(undefined,scrEnd_)
scrEffect=method(undefined,scrEffect_)
apply = method(undefined, apply_)
scrReset = method(undefined, scrReset_)
willAnimate = method(undefined, willAnimate_)
owner=other.id
load = function(struct){
applied = struct._applied
symptomatic = struct._symptomatic
turnsLeft = struct._turnsLeft
}

save = function(){
return {
	_applied : applied,
	_symptomatic : symptomatic,
	_turnsLeft : turnsLeft
	}
}

}

function constructAsleep(){return new scrStatusAilment(sound_sleep,sleep_animator,"slp",,asleepEffect, ailmentStandardEnd, applySleep, asleepWillAnimate)}
function constructBurned(){return new scrStatusAilment(,,"brn",,,,applySimplest)}
function constructPoisoned(){return new scrStatusAilment(,,"psn",,,,applySimplest)}
function constructParalyzed(){return new scrStatusAilment(sound_paralyzed,paralyzed_animator,"par",,,,,paralyzedWillAnimate)}
function constructLeeched(){return new scrStatusAilment(,,"lch",,,,)}
function constructNightmared(){return new scrStatusAilment(sound_nightmare,nightmared_animator,"ngt",,nightmaredEffect,,,asleepWillAnimate)}
function constructConfused(){return new scrStatusAilment(sound_confused, obj_confused_animator,"cnf",,scrConfusedEffect,,applyConfused, confusedWillAnimate, )}
function constructFrozen(){
	var frozen = new scrStatusAilment(,,"frz",,,,)
	variable_struct_set(frozen,"unfreeze",0)
	return frozen
	}

function scrStatusAilmentStandardStart(){
if(willAnimate()){
audio_pause_sound(global.background_music)
audio_play_sound(sound,0,0)
var varanimator = instance_create_depth(owner.x,owner.y,-1,animator)
with(varanimator){struct = other}
}
turnsLeft=max(turnsLeft-1,0)
}

function scrConfusedEffect() {
	if(symptomatic){
	with(owner){
	var varselfhit = new scrMove(obj_hit_animation,sound_hit,
	,STANDARD_MOVEDAMAGE,,,,,,, 1, DAMAGEPARADIGMS.elementless,, )
		}
		with(varselfhit){
			owner.HP-=damage_calculate(owner)
			}
	}
	
}


function nightmaredEffect(){with(owner){HP-=max_HP/8}}

/*function scrAsleepStart(){
	if(willAnimate()){
	var varsound=sound_awakening*awakening+sound_sleep*!awakening
	audio_pause_sound(global.background_music)
	audio_play_sound(varsound,0,0)
	var varanimator = instance_create_depth(owner.x,owner.y,1,animator)
	with(varanimator){struct=other.id}
	}
	if(awakening){owner.nightmared.applied=0}
	turnsLeft=max(turnsLeft-1,0)
}*/

function scrFrozenStart(){
	if(choose(0,0,1)){unfreeze=0}
	scrStatusAilmentStandardStart()}

    
function scrConfusionImplementable(){with(owner) return  !(asleep.applied or frozen.applied or paralyzed.symptomatic)}
function paralyzedWillAnimate(){with(owner) return paralyzed.symptomatic and !(asleep.applied or frozen.applied) }
	
	function ailmentStandardEnd(){
audio_resume_sound(global.background_music)
scrEffect()
with(owner) {if(HP>0) scr_perform_status_ailment()}
}

function ailmentStandardEffect(){}
function asleepEffect(){applied = turnsLeft != 0
	if(!applied) owner.nightmared.applied = 0
	}
function applyConfused() {
	applied=1
	turnsLeft=choose(3,4,4,5)
}

function applySleep(){
applied=1
turnsLeft=choose(3,4,4,5)
}

function applySimplest(){applied = 1}
function willAnimateSimplest(){return applied }
function confusedWillAnimate(){
	with(owner){ 
	return !(asleep.applied  or frozen.applied or paralyzed.symptomatic) } }
function asleepWillAnimate(){with(owner){ return !frozen.applied}}



function simplestReset(){
applied = 0;
symptomatic = 0;
turnsLeft = 0;
}
