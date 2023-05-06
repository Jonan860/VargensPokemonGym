
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.ground
damage=1
name="Sandshrew"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sound=sound_snorlax
sandAttack=constructSandAttack() 
scratch=constructScratch()
ds_list_add(movesList,sandAttack,scratch)
xstart=x; ystart=y;
scr_ai= method(undefined, scr_sandshrew_ai)


/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._sandshrew)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._sandshrew)
}