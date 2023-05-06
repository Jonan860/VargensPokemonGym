event_inherited()
max_HP=120;
HP=120;
defence_bonus=0;
attack_bonus=0;
active=0;
type=ELEMENTALTYPES.normal
damage=1
defence=0.8
max_action_bar=80
action_bar=0
name="Meowth"
alive=1
xstart=x; ystart=y
sound=sound_snorlax
growl=constructGrowl()
scratch=constructScratch()
ds_list_add(movesList,growl,scratch)
scr_ai=method(undefined,scr_meowth_ai)


/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._meowth)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._meowth)
}
