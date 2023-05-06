
if(keyboard_check_pressed(ord("L"))){
//	scr_load()
	}

with(obj_trainer){
if(active_pokemon != noone) scrDeath()
if(object_index!=obj_amber){
switch(room){
case roomWorld: scrWorld(); break;
case roomMatch: scrMatch(); break;
}
}
else {
scrMovement()
scrDefeated()
scrEnterBuilding()
scrSwitchPokemon()
scrSetMovable()
scrPerformStatusAilment()
}
}




