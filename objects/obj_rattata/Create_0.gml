
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.normal
damage=1
name="Rattata"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sound=sound_snorlax
xstart=x; ystart=y;
tailWhip=constructTailWhip()
quickAttack=constructQuickAttack()
ds_list_add(movesList,tailWhip,quickAttack)
scr_ai=method(undefined, scr_rattata_ai) 

/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._rattata)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._rattata)
}