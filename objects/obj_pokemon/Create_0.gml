
HP = 1
alive = 1
daycare = 0
owner = noone
defence_bonus = 0; attack_bonus = 0; evasion_bonus = 0; accuracy_bonus = 0;
active = 0
level = 5
max_action_bar = 100
action_bar = max_action_bar
experience = 0
exp_needed = (power(level, 4)) * (level - 4)  ///
xstart = x; ystart = y;
sound = sound_cow



confused = new statusAilment(AILMENTS.confused)
asleep = new statusAilment(AILMENTS.asleep)
paralyzed = new statusAilment(AILMENTS.paralyzed)
poisoned = new statusAilment(AILMENTS.poisoned)
frozen = new statusAilment(AILMENTS.frozen)
burned = new statusAilment(AILMENTS.burned)
leeched = new statusAilment(AILMENTS.leeched)
nightmared = new statusAilment(AILMENTS.nightmared)
statusAilmentList = ds_list_create()
ds_list_add(statusAilmentList, burned, poisoned, frozen, nightmared, leeched, asleep, paralyzed, confused)

ailmentIterator = 0

movesList = ds_list_create()

die = function() {
	if(owner == global.amber) {
		with(obj_move_button){ instance_destroy()}
	}
	active = 0
	alive = 0
}

status_text = ""

scr_ai = function(){}

scrMoveStart = function() {
	for(var i = 0; i < ds_list_size(movesList); i++) {
		var move = ds_list_find_value(movesList, i)
		if(move.phase == global.phase and audio_is_playing(move.sound)) {
			move.scrStart()
		}
	}
}

moveToDaycare = function() {
	visible = 0
	daycare = 1
	with(owner) {
		ds_list_delete(pokemonCompanionList, ds_list_find_index(pokemonCompanionList,other.id))
		ds_list_add(daycareList, other.id)
	}
}

daycareHeal = function(healAmount) {
	HP = HP > 0 ? min(HP + healAmount, max_HP) : healAmount/2
	for(var i = 0; i < ds_list_size(movesList); i++) {
		with(movesList[|i]) {
			pp = ppMax
		}
	}
	resetStatusAilment()
	alive = 1
}

Heal = function(healAmount) {HP = min(max_HP, HP + healAmount)}

daycareRetrieve = function() {
	daycare = 0
	visible = 0
	with(owner) {
		ds_list_delete(daycareList, ds_list_find_index(daycareList, other.id))
		ds_list_add(pokemonCompanionList, other.id)
	}
}


enemy_reset_attributes = function() {
	action_bar = max_action_bar
	resetBonuses()
	resetStatusAilment()
	resetMovePP()
}
	
resetBonuses = function() {
	defence_bonus = 0
	attack_bonus = 0
	accuracy_bonus = 0
}
resetStatusAilment = function() {
	for(var i = 0; i < ds_list_size(statusAilmentList); i++) {
		with (statusAilmentList[|i]) scrReset()
	}
}

resetMovePP = function() {
	for(var i = 0; i < ds_list_size(movesList); i++) {
		with(movesList[|i]) pp = ppMax
	}
}


symptomize = function() {
	paralyzed.symptomatic = paralyzed.applied * choose(0, 0, 1)
	confused.symptomatic = confused.applied * choose(0, 0, 1)
}

getOpponent = function() {return owner.getOpponent().active_pokemon}

save = function(saveStruct = global.saveData) {
	var varMovesppList = array_create(ds_list_size(movesList))
	for(var i = 0; i < ds_list_size(movesList); i++) {
		varMovesppList[i] = movesList[|i].pp
	}

	saveDataEntry = {
		_HP : HP,
		_max_HP : max_HP,
		_x : x,
		_y : y,
		_daycare : daycare,
		_action_bar : action_bar,
		_level : level,
	    _movesppList : varMovesppList,
		_alive : alive,
		_active : active, 
		_defence_bonus : defence_bonus, _attack_bonus : attack_bonus, _evasion_bonus : evasion_bonus, _accuracy_bonus : accuracy_bonus,
		_level : level,
		_experience : experience,
		_exp_needed : exp_needed, ///
		_damage : damage,
		_xstart : xstart, _ystart : ystart,
		_sound : sound,
		_active_pokemon : owner.active_pokemon == id,
		_confused : confused.save(),
		_asleep : asleep.save(),
		_paralyzed : paralyzed.save(),
		_poisoned : poisoned.save(),
		_frozen : frozen.save(),
		_burned : burned.save(),
		_leeched : leeched.save(),
		_nightmared : nightmared.save(),
		_status_text : status_text
	}

	variable_struct_set(saveStruct,owner.name + "." + name, saveDataEntry)

}



load = function(saveStruct = global.saveData) {
	var struct= variable_struct_get(saveStruct,owner.name + "." + name)
	var isBattleSave = saveStruct == global.saveBeforeBattle
	HP = struct._HP

	
	x = struct._x; y = struct._y
	
	action_bar = struct._action_bar
	active = struct._active
	daycare = struct._daycare
	for(var i = 0; i < array_length(struct._movesppList); i++) {
		movesList[|i].pp = struct._movesppList[i]
	}
	
	
	if(struct._active_pokemon and isBattleRoom(asset_get_index(saveStruct._room)) and scrContains(owner, global.enemy, global.amber)) {
		owner.active_pokemon = id
		visible = 1
		active = 1
		owner.visible = 0
		if(owner == global.amber) {
			with(obj_move_button) {instance_destroy()}
			
			scr_create_move_buttons()
		}
	}
	
	alive = struct._alive
	defence_bonus = struct._defence_bonus; attack_bonus = struct._attack_bonus; evasion_bonus = struct._evasion_bonus; accuracy_bonus = struct._accuracy_bonus;

	if(saveStruct != global.saveBeforeBattle) {
		level = struct._level
		experience = struct._experience
		exp_needed = struct._exp_needed
		max_HP = struct._max_HP
		damage = struct._damage
	} ///

	xstart = struct._xstart; ystart = struct._ystart;
	sound = struct._sound;
	status_text = struct._status_text
	confused.load(struct._confused)
	asleep.load(struct._asleep)
	paralyzed.load(struct._paralyzed)
	poisoned.load(struct._poisoned)
	frozen.load(struct._frozen)
	burned.load(struct._burned)
	leeched.load(struct._leeched)
	nightmared.load(struct._nightmared)
}