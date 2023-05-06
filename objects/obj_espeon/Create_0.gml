event_inherited()
//attacker är psybeam sandattack psych-up
max_HP=96
HP=96
type=ELEMENTALTYPES.psychic
damage=1.2
name="Espeon"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sandAttack=constructSandAttack()
confusion=constructConfusion()
ds_list_add(movesList,sandAttack,confusion)
scr_ai = method(undefined, scr_espeon_ai)


/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._espeon)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._espeon)
}

