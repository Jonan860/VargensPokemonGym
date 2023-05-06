event_inherited();
max_HP=120
HP=120;
defence_bonus=0;
attack_bonus=0;
active=0;
type=ELEMENTALTYPES.rock;
damage=1;
name="Geodude"
alarm_counter=5
sound=sound_its_geodude
if(global.player="jonathan"){alive=0}
if(room=difficulty){alarm[0]=45*room_speed}

info_bubble=spr_geodude_info
defenceCurl=constructDefenceCurl()
defenceCurlSprite=spr_geodude_defence_curl
leer=constructLeer()
rockThrow=constructRockThrow()
ds_list_add(movesList,defenceCurl,leer,rockThrow)


button=obj_geodude_button

/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._geodude)
}

save = function(saveDataTrainer){
	variable_struct_set(saveDataEntry,"_geodude",{})
savePokemon(saveDataTrainer._geodude)
}