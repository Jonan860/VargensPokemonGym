
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.electric
damage=1
name="Pichu"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sound=sound_snorlax
charm=constructCharm()
thunderShock=constructThunderShock()
ds_list_add(movesList,charm,thunderShock)
xstart=x; ystart=y;
scr_ai=method(undefined,scr_pichu_ai)

/*load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._pichu)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._pichu)
}