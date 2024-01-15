
function moveConstruct(_enum) constructor {
	animator = moveEnumToAnimator(_enum)
	ppMax = moveEnumToMaxPP(_enum)
	pp = ppMax
	button = moveEnumToButton(_enum)
	sound = moveEnumToSound(_enum)
	damage = moveEnumToDamage(_enum)
	critChance = 7.5
	accuracy = 1
	elementalType = moveEnumToElement(_enum)
	
	scrEffect = MoveEnumToEffect(_enum)
	scrMissEffect = moveEnumToMissEffect(_enum)
	scrStart = moveEnumToPerformStart(_enum)
	scrEnd = method(undefined, moveEnd)
	checkForHit = method(undefined, check_for_hit)
	damageParadigm = moveEnumToDamageParadigm(_enum)
	getOpponent = function(){return owner.getOpponent()}
	opponent = noone
	owner = other.id
	willHaveAnEffect = moveEnumToWillHaveAnEffect(_enum)
	load = function(struct){pp = struct.pp}
	if(_enum == MOVES.rollout) {
		bonus = 1
	}
}

#macro STANDARD_MOVEDAMAGE 20

function scr_perform_start() {  //default
pp -= sign(ppMax)
owner.action_bar = owner.max_action_bar
opponent = getOpponent()
var miss = !checkForHit(opponent)
global.phase = miss ? PHASES.attackMiss : PHASES.attackHit
audio_play_sound(sound, 0, 0) //might turn of background
audio_sound_gain(global.background_music, lowVolume, 0)
var varAnimator = instance_create_depth(owner.x, owner.y, 0, animator)
	with(varAnimator) {
		struct = other
		x += Xtranslation * sign(opponent.x - struct.owner.x)
		y += Ytranslation
		xstart = x; ystart = y
	}
}

function thunderStart() {
	if(owner.owner = global.amber) {
		number_correct_answer = 0
		global.phase = PHASES.attackHit
		var riddle = instance_create_depth(room_width / 2, room_height / 2, 0, obj_riddle_bar)
		with(riddle){owner = other}
		audio_sound_gain(global.background_music, lowVolume, 0)
		audio_play_sound(sound_na_na_na_thunder, 0, 0)
	} else {
		number_correct_answer = choose(4, 5, 6, 7, 8)
		scr_perform_start()
	}
}

function doNothing() {}

function quickAttackEffect() {
	owner.action_bar -= owner.max_action_bar / 2
	moveDamageEffect()
}

function confusionEffect() {
	moveDamageEffect()
	if(random(100) < 32) {opponent.confused.apply()}
}
	
function charmEffect() {opponent.attack_bonus = max(-5, opponent.attack_bonus - 2)}
function defenceCurlEffect(){owner.defence_bonus = min(owner.defence_bonus + 1, 5)}
function hypnosisEffect(){if(irandom(99) < 66){scr_put_to_sleep(opponent)}}
function growlEffect(){opponent.attack_bonus = max(opponent.attack_bonus - 1, -5)}
function leerEffect(){opponent.defence_bonus = max(opponent.defence_bonus - 1, -5)}
function moveDamageEffect(){opponent.HP -= damage_calculate(opponent)}
function tailWhipEffect(){opponent.defence_bonus = max(opponent.defence_bonus - 1, -5)}
function sandAttackEffect(){with(opponent){accuracy_bonus = max(accuracy_bonus - 1, -5)}}
function singEffect(){scr_put_to_sleep(opponent)}
function nightmareEffect(){(opponent.nightmared.apply())}

	
function dreamEaterEffect() {
	var damage = damage_calculate(opponent)
	opponent.HP -= damage
	owner.HP = min(damage + owner.HP, owner.max_HP)
}
	
function amnesiaEffect() {
	with(owner) {
		defence_bonus = min(defence_bonus + 1, 5)
		attack_bonus = min(attack_bonus + 1, 5)
	}
}

function lickEffect() {
	moveDamageEffect()
	if(irandom(100)<33){opponent.paralyzed.applied = 1}
}

function rolloutEffect() {
	owner.damage *= bonus
	moveDamageEffect()
	owner.damage /= bonus
	bonus = bonus < 32 ? 2 * bonus : 1
}
function rolloutMissEffect(){bonus = 1}


function moveEnd() {
	audio_resume_sound(global.background_music)
	var isAmbersTurn = global.turn == TURNS.Amber
	owner.x = isAmbersTurn ? match_x : opponent_x
	owner.y = isAmbersTurn ? match_y : opponent_y
	owner.speed = 0
	switch(global.phase) {
		case PHASES.attackHit: scrEffect(); break;
		case PHASES.attackMiss: scrMissEffect(); break;
	}
	scr_turn_decision()
}

function attackDebufferWillHaveEffect(){return getOpponent().attack_bonus > -5}
function attackBufferWillHaveEffect(){return owner.attack_bonus < 5}
function defenceBufferWillHaveEffect(){return  owner.defence_bonus < 5}
function defenceDebufferWillHaveEffect(){return getOpponent().defence_bonus > -5}
function accuracyDebufferWillHaveEffect(){return getOpponent().accuracy_bonus > -5}
function amnesiaWillHaveEffect(){return owner.attack_bonus < 5 or owner.defence_bonus < 5}

function moveEnumToWillHaveAnEffect(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return method(undefined, amnesiaWillHaveEffect)
		case MOVES.charm : return method(undefined, attackDebufferWillHaveEffect)
		case MOVES.defenceCurl : return method(undefined, defenceBufferWillHaveEffect)
		case MOVES.growl : return method(undefined, attackDebufferWillHaveEffect)
		case MOVES.leer : return method(undefined, defenceDebufferWillHaveEffect)
		case MOVES.sandAttack : return method(undefined, accuracyDebufferWillHaveEffect)
		case MOVES.tailWhip : return method(undefined, defenceDebufferWillHaveEffect)
		default : return function() {return true}
	}
}
function moveEnumToName(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return "Amnesia";
		case MOVES.bubbles : return "Bubbles";
		case MOVES.ember : return "Ember";
		case MOVES.vineWhip : return "Vine Whip";
		case MOVES.tailWhip : return "Tail Whip";
		case MOVES.charm : return "Charm";
		case MOVES.confusion : return "Confusion";
		case MOVES.defenceCurl : return "Defence Curl";
		case MOVES.leer : return "Leer";
		case MOVES.growl : return "Growl";
		case MOVES.hypnosis : return "Hypnosis";
		case MOVES.lick : return "Lick";
		case MOVES.nightmare : return "Nightmare";
		case MOVES.psyCutter : return "Psy Cutter";
		case MOVES.quickAttack : return "Quick Attack";
		case MOVES.rockThrow : return "Rock Throw";
		case MOVES.rollout : return "Rollout";
		case MOVES.sandAttack : return "Sand Attack";
		case MOVES.scratch : return "Scratch";
		case MOVES.sing : return "Sing";
		case MOVES.superFang : return "Super Fang";
		case MOVES.tackle : return "Tackle";
		case MOVES.dreamEater : return "Dream Eater";
		case MOVES.thunder : return "Thunder";
		case MOVES.thundershock : return "Thundershock";
	}	
	
}

function moveEnumToSound(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return sound_growl;
		case MOVES.bubbles : return sound_bubble;
		case MOVES.charm : return sound_charm;
		case MOVES.confusion : return sound_growl;
		case MOVES.defenceCurl : return sound_defence_curl;
		case MOVES.dreamEater : return sound_growl;
		case MOVES.ember : return sound_ember; 
		case MOVES.growl : return sound_growl;
		case MOVES.hypnosis : return sound_hypnosis;
		case MOVES.leer : return sound_leer;
		case MOVES.lick : return sound_lick;
		case MOVES.nightmare : return sound_nightmare;
		case MOVES.psyCutter : return sound_psy_cutter;
		case MOVES.quickAttack : return sound_hit; 
		case MOVES.rockThrow : return sound_rock_throw;
		case MOVES.rollout : return sound_growl;
		case MOVES.sandAttack : return sound_growl;
		case MOVES.scratch : return sound_scratch;
		case MOVES.sing : return sound_sing;
		case MOVES.superFang : return sound_scratch; 
		case MOVES.tackle : return sound_hit; 
		case MOVES.tailWhip : return sound_tail_whip;
		case MOVES.thunder : return sound_thunder;
		case MOVES.thundershock : return sound_thundershock;
		case MOVES.vineWhip : return sound_vine_whip;
	}
}

function moveEnumToButton(_enum) {
	switch(_enum) {
		case MOVES.bubbles : return obj_bubble_button;
		case MOVES.defenceCurl : return obj_defence_curl_button;
		case MOVES.ember : return obj_ember_button;
		case MOVES.growl : return obj_growl_button;
		case MOVES.leer : return obj_leer_button;
		case MOVES.psyCutter : return obj_psy_cutter_button;
		case MOVES.rockThrow : return obj_rock_throw_button;
		case MOVES.tailWhip : return obj_tail_whip_button;
		case MOVES.thunder : return obj_thunder_button;
		case MOVES.thundershock : return obj_thundershock_button;
		case MOVES.vineWhip : return obj_wine_whip_button;
		default : return noone;
	}
}

function moveEnumToAnimator(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return obj_amnesia_animation;
		case MOVES.bubbles : return obj_bubble_animation
		case MOVES.charm : return obj_charm_animator;
		case MOVES.confusion : return obj_confusion_animation;
		case MOVES.defenceCurl : return obj_defence_curl_animation;
		case MOVES.dreamEater : return obj_dreameater_animation;
		case MOVES.ember : return obj_ember_animation;
		case MOVES.growl : return obj_growl_animation;
		case MOVES.hypnosis : return obj_hypnosis_animation
		case MOVES.leer : return obj_leer_animation;
		case MOVES.lick : return obj_lick_animation;
		case MOVES.nightmare : return obj_nightmare_animation;
		case MOVES.psyCutter : return obj_psy_cutter_animation;
		case MOVES.quickAttack : return obj_quick_attack_animation; 
		case MOVES.rockThrow : return obj_rock_throw_animation; 
		case MOVES.rollout : return obj_rollout_animation; 
		case MOVES.sandAttack : return obj_sand_attack_animation; 
		case MOVES.scratch : return obj_scratch_animation;
		case MOVES.sing : return obj_sing_animation;
		case MOVES.superFang : return obj_super_fang_animation; 
		case MOVES.tackle : return obj_tackle_animation;
		case MOVES.tailWhip : return obj_tail_whip_animation; 
		case MOVES.thunder : return obj_thunder_animator; 
		case MOVES.thundershock : return obj_thundershock_animation
		case MOVES.vineWhip : return obj_vine_whip_animation;
	}
} 

function moveEnumToElement(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return ELEMENTALTYPES.psychic;
		case MOVES.bubbles : return ELEMENTALTYPES.water; 
		case MOVES.charm : return ELEMENTALTYPES.normal;
		case MOVES.confusion : return ELEMENTALTYPES.psychic;
		case MOVES.dreamEater : return ELEMENTALTYPES.psychic;
		case MOVES.ember : return ELEMENTALTYPES.fire;
		case MOVES.hypnosis : return ELEMENTALTYPES.psychic; 
		case MOVES.lick : return ELEMENTALTYPES.ghost; 
		case MOVES.nightmare : return ELEMENTALTYPES.ghost;
		case MOVES.psyCutter : return ELEMENTALTYPES.psychic;
		case MOVES.rockThrow : return ELEMENTALTYPES.rock;
		case MOVES.rollout : return ELEMENTALTYPES.rock;
		case MOVES.thunder : return ELEMENTALTYPES.electric;
		case MOVES.thundershock : return ELEMENTALTYPES.electric;
		case MOVES.vineWhip : return ELEMENTALTYPES.grass;
		default : return ELEMENTALTYPES.normal;
	}
}

function moveEnumToDamageParadigm(_enum) {
	switch(_enum) {
		case MOVES.superFang : return DAMAGEPARADIGMS.percentageOfHP; break;
		case MOVES.thunder : return DAMAGEPARADIGMS.riddles; break;
		case MOVES.nightmare : return DAMAGEPARADIGMS.percentageOfMaxHP; break;
		default : return DAMAGEPARADIGMS.normal
	}
}

function MoveEnumToEffect(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return method(undefined, amnesiaEffect);
		case MOVES.charm : return method(undefined, charmEffect);
		case MOVES.confusion : return method(undefined, confusionEffect);
		case MOVES.defenceCurl : return method(undefined, defenceCurlEffect);
		case MOVES.dreamEater : return method(undefined, dreamEaterEffect);
		case MOVES.growl : return method(undefined, growlEffect);
		case MOVES.hypnosis : return method(undefined, hypnosisEffect);
		case MOVES.leer : return method(undefined, leerEffect);
		case MOVES.lick : return method(undefined, lickEffect);
		case MOVES.nightmare : return method(undefined, nightmareEffect);
		case MOVES.quickAttack : return method(undefined, quickAttackEffect);
		case MOVES.rollout : return method(undefined, rolloutEffect);
		case MOVES.sandAttack : return method(undefined, sandAttackEffect);
		case MOVES.sing : return method(undefined, singEffect);
		case MOVES.tailWhip : return method(undefined, tailWhipEffect);
		default : return method(undefined, moveDamageEffect);
	}
}
function moveEnumToPerformStart(_enum) {
	
	switch(_enum) {
		case MOVES.thunder : return method(undefined, thunderStart); break;
		default : return method(undefined, scr_perform_start); break;
	}
}

function moveEnumToMissEffect(_enum) {
	switch(_enum) {
		case MOVES.rollout : return method(undefined, rolloutMissEffect); break;
		default : return method(undefined, doNothing); break;
	}
}

function moveEnumToMaxPP(_enum) {
	switch(_enum) {
		case MOVES.amnesia : return 2;
		case MOVES.charm : return 2;
		case MOVES.defenceCurl : return 5;
		case MOVES.growl : return 5;
		case MOVES.hypnosis : return 3;
		case MOVES.leer : return 5;
		case MOVES.sandAttack : return 5;
		case MOVES.sing : return 2;
		case MOVES.superFang : return 2;
		case MOVES.tailWhip : return 5;
		case MOVES.thunder : return 1
		default : return 0;
	}
}

function moveEnumToDamage(_enum) {
	switch(_enum) {
		case MOVES.bubbles : return STANDARD_MOVEDAMAGE
		case MOVES.confusion : return STANDARD_MOVEDAMAGE
		case MOVES.dreamEater : return STANDARD_MOVEDAMAGE;
		case MOVES.ember : return STANDARD_MOVEDAMAGE;
		case MOVES.lick : return STANDARD_MOVEDAMAGE;
		case MOVES.nightmare : return STANDARD_MOVEDAMAGE; 
		case MOVES.psyCutter : return STANDARD_MOVEDAMAGE;
		case MOVES.quickAttack : return STANDARD_MOVEDAMAGE / 2; 
		case MOVES.rockThrow : return STANDARD_MOVEDAMAGE; 
		case MOVES.rollout : return STANDARD_MOVEDAMAGE / 2; 
		case MOVES.scratch : return STANDARD_MOVEDAMAGE; 
		case MOVES.superFang : return 50; 
		case MOVES.tackle : return STANDARD_MOVEDAMAGE;
		case MOVES.thunder : return 8;
		case MOVES.thundershock : return STANDARD_MOVEDAMAGE;
		case MOVES.vineWhip : return STANDARD_MOVEDAMAGE;
		default : return 0;
	}
}