if(visible){
global.phase=PHASES.sakuradaycaredropof
with(obj_starters_button){instance_destroy()}
with(obj_pokemon){visible = 0}
displayPokemonList(400,0,0.5,0.5,global.amber.pokemonCompanionList)
visible = 0
with(obj_retreive_button) visible = 1
}



