/// @description Insert description here
// You can write your code in this editor


if(visible){
	if(scrMouseOnImage()){
	switch(global.phase){
		case PHASES.sakuradaycaredropof:{
		moveToDaycare()
		//displayPokemonList(400,0,0.5,0.5,global.amber.pokemonCompanionList)
		//with(obj_starters_button) instance_destroy()
		with(obj_drop_of_button) visible = 1
		//global.phase=PHASES.Sakuradaycareentrancehall
		}; break;

		case PHASES.sakuradaycareretrieve:{
		daycareRetrieve()
		//displayPokemonList(400,0,0.5,0.5,global.amber.pokemonCompanionList)
		//with(obj_starters_button) instance_destroy()
		with(obj_retreive_button) visible = 1
		//global.phase=PHASES.Sakuradaycareentrancehall
		}; break;
	}
	}
}