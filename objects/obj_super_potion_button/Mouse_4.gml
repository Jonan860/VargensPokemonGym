with(global.amber){
if(active_pokemon.HP<active_pokemon.max_HP){
superPotion.apply()
active_pokemon.action_bar+=active_pokemon.max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}
}