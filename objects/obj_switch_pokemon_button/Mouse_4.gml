if(global.phase=PHASES.choosing and global.turn=TURNS.Amber){
var i=0
if(!instance_exists(obj_starters_button)){
	with(global.amber){
	for(var i=0;i<ds_list_size(pokemonCompanionList);i++){
	var poke=pokemonCompanionList[|i]
	var button=instance_create_depth(600,400+40*i,0,poke.button)
	button.object=poke
	}}}

else with(obj_starters_button) instance_destroy()

}

