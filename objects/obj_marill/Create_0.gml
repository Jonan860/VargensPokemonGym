
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.water
damage=1
name="Marill"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sound=sound_snorlax
rollout_bonus=1
defenceCurl=constructDefenceCurl()
rollout=constructRollout()
ds_list_add(movesList,defenceCurl,rollout)
xstart=x; ystart=y;
scr_ai=method(undefined,scr_marill_ai)
defenceCurlSprite = spr_marill_roll
rolloutSprite = spr_marill_roll

/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._marill)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._marill)
}