if(visible){
global.phase=PHASES.sakuradaycareretrieve

with(obj_starters_button){instance_destroy()}
with(obj_pokemon){visible = 0}
displayPokemonList(400,0,0.5,0.5,global.amber.daycareList)
with(obj_drop_of_button) visible = 1
visible = 0
}

