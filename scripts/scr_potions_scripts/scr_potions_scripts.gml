
function potionSuperPotionEffect() {with(owner.active_pokemon){HP = min(HP + other.healAmount, max_HP)}}
function potionSuperPotionAppliable(){with(owner.active_pokemon){return HP < max_HP and alive}}

function antidoteEffect(){with(owner.active_pokemon) poisoned.applied = 0}
function antidoteAppliable(){with(owner.active_pokemon) return poisoned.applied}

function awakeningEffect() {
	with(owner.active_pokemon) {
		asleep.applied = 0
		nightmared.applied = 0
	}
}
function awakeningAppliable(){with(owner.active_pokemon) return asleep.applied}

function burnHealEffect(){with(owner.active_pokemon) burned.applied = 0}
function burnedAppliable(){with(owner.active_pokemon) return burned.applied}

function iceHealEffect(){with(owner.active_pokemon) frozen.applied = 0}
function iceHealAppliable(){with(owner.active_pokemon) return frozen.applied}

function paralyzeHealEffect(){ with(owner.active_pokemon) paralyzed.applied = 0}
function paralyzedHealAppliable(){with(owner.active_pokemon) return paralyzed.applied}

function fullHealAppliable() {
	with(owner.active_pokemon) {
		for(var i = 0; i < ds_list_size(statusList); i++) {
			var ailment = ds_list_find_value(statusList, i)
			with(ailment){if(appliable()){ return 1}}
		}
		return 0
	}
}
function fullHealEffect() {
	with(owner.active_pokemon) {
		for(var i = 0; i < ds_list_size(statusList); i++) {
			var ailment = ds_list_find_value(statusList, i)
			with(ailment) {scrEffect()}
		}
	}
}