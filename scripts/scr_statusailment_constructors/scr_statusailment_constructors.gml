
 function statusAilment(_enum) constructor  {
	applied = 0
	symptomatic = 0
	turnsLeft = 0
	animator = ailmentEnumToAnimator(_enum)
	sound = ailmentEnumToSound(_enum)
	text = ailmentEnumToText(_enum)
	scrStart = method(undefined, scrStatusAilmentStandardStart)
	scrEnd = method(undefined, ailmentStandardEnd)
	scrEffect = ailmentEnumToEffect(_enum)
	apply = ailmentEnumToApply(_enum)
	scrReset = method(undefined, simplestReset)
	willAnimate = ailmentEnumToWillAnimate(_enum)
	owner = other.id
	load = function(struct) {
		applied = struct._applied
		symptomatic = struct._symptomatic
		turnsLeft = struct._turnsLeft
	}

	save = function() {
		return {
			_applied : applied,
			_symptomatic : symptomatic,
			_turnsLeft : turnsLeft
		}
	}

}

function ailmentEnumToWillAnimate(_enum) {
	switch(_enum) {
		case AILMENTS.asleep : return method(undefined, asleepWillAnimate)
		case AILMENTS.paralyzed : return method(undefined, paralyzedWillAnimate)
		case AILMENTS.confused : return method(undefined, confusedWillAnimate)
		case AILMENTS.nightmared : return method(undefined, asleepWillAnimate)
		default : return function() { return false}
	}
}

function ailmentEnumToApply(_enum) {
	switch(_enum) {
		case  AILMENTS.asleep : return method(undefined, applySleep); break;
		case AILMENTS.confused : return method(undefined, applyConfused); break;
		default : return method(undefined, applySimplest)
	}
}

function ailmentEnumToEffect(_enum) {
	switch(_enum) {
		case  AILMENTS.asleep : return method(undefined, asleepEffect)
		case AILMENTS.paralyzed : return method(undefined, ailmentStandardEffect)
		case AILMENTS.confused : return method(undefined, scrConfusedEffect)
		case AILMENTS.nightmared : return method(undefined, nightmaredEffect)
		default : return method(undefined, ailmentStandardEffect)
	}
}

function ailmentEnumToAnimator(_enum) {
	switch(_enum) {
		case  AILMENTS.asleep : return sleep_animator
		case AILMENTS.paralyzed : return paralyzed_animator
		case AILMENTS.confused : return obj_confused_animator
		case AILMENTS.nightmared : return nightmared_animator
		default : return noone
	}
}

function ailmentEnumToSound(_enum) {
	switch(_enum) {
		case  AILMENTS.asleep : return sound_sleep
		case AILMENTS.paralyzed : return sound_paralyzed
		case AILMENTS.confused : return sound_confused
		case AILMENTS.nightmared : return sound_nightmare
		default : return sound_growl
	}
}

function ailmentEnumToText(_enum) {
	switch(_enum) {
		case  AILMENTS.asleep : return "slp"
		case AILMENTS.burned : return "brn"
		case AILMENTS.poisoned : return "psn"
		case AILMENTS.paralyzed : return "par"
		case AILMENTS.leeched : return "lch"
		case AILMENTS.confused : return "cnf"
		case AILMENTS.nightmared : return "ngt"
		case AILMENTS.frozen : return "frz"
	}
}


function scrStatusAilmentStandardStart() {
	if(willAnimate()) {
		audio_sound_gain(global.background_music, 1, 0)
		audio_play_sound(sound, 0, 0)
		var varanimator = instance_create_depth(owner.x, owner.y, -1, animator)
		with(varanimator){struct = other}
	}
	turnsLeft = max(turnsLeft - 1, 0)
}

function scrConfusedEffect() {
	if(symptomatic) {
		with(owner) {
			var varselfhit = new moveConstruct(MOVES.tackle)
		}
		with(varselfhit) {
			damageParadigm = DAMAGEPARADIGMS.elementless
			owner.HP -= damage_calculate(owner)
		}
	}	
}


function nightmaredEffect(){with(owner){HP -= max_HP/8}}

function scrFrozenStart() {
	if(choose(0, 0, 1)){unfreeze = 0}
	scrStatusAilmentStandardStart()
}

    
function scrConfusionImplementable(){with(owner) return  !(asleep.applied or frozen.applied or paralyzed.symptomatic)}
function paralyzedWillAnimate(){with(owner) return paralyzed.symptomatic and !(asleep.applied or frozen.applied) }
	
	function ailmentStandardEnd() {
	audio_sound_gain(global.background_music, 1, 0)
	scrEffect()
	with(owner) {
		if(HP > 0) scr_perform_status_ailment()
	}
}

function ailmentStandardEffect(){}
function asleepEffect() {
	applied = turnsLeft != 0
	if(!applied) owner.nightmared.applied = 0
}
function applyConfused() {
	applied = 1
	turnsLeft = choose(3, 4, 4, 5)
}

function applySleep() {
	applied = 1 
	turnsLeft = choose(3, 4, 4, 5)
}

function applySimplest() {applied = 1}
function willAnimateSimplest() {return applied }
function confusedWillAnimate() {
	with(owner) { 
		return !(asleep.applied  or frozen.applied or paralyzed.symptomatic) 
	} 
}
function asleepWillAnimate() {
	with(owner){ return !frozen.applied}
}



function simplestReset() {
	applied = 0;
	symptomatic = 0;
	turnsLeft = 0;
}


