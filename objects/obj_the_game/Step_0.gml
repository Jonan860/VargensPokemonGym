with(obj_trainer) {
	if(active_pokemon != noone) scrDeath()
	
	if(id != global.amber) {
		switch(room) {
			case roomWorld: scrWorld(); break;
			case roomMatch: scrMatch(); break;
		}
	} else {
		scrMovement()
		scrDefeated()
		scrEnterBuilding()
		scrSwitchPokemon()
		scrSetMovable()
		scrPerformStatusAilment()
	}
}






