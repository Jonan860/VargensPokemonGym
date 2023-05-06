event_inherited();
max_HP=120
HP=120;
attack=20;
defence_bonus=0;
attack_bonus=0;
active=0;
type=ELEMENTALTYPES.grass;
damage=1;
name="Bulbasaur"
alarm_counter=5
sound=sound_bulbasaur
if(room==difficulty){alarm[0]=50*room_speed}

info_bubble=spr_bulbasaur_info

growl=constructGrowl()
vineWhip=constructVineWhip()
ds_list_add(movesList,growl,vineWhip)

button=obj_bulbasaur_button

/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._bulbasaur)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._bulbasaur)
}