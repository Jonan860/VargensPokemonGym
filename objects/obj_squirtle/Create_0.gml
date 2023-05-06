event_inherited();
max_HP=120
HP=120;
defence_bonus=0;
attack_bonus=0;
active=0;
type=ELEMENTALTYPES.water;
damage=1;
name="Squirtle"
alarm_counter=5
sound=sound_squirtle
if(room=difficulty){
appear=0
alarm[1]=30*room_speed
}
info_bubble=spr_squirtle_info
bubbles=constructBubble()
defenceCurl=constructDefenceCurl()
ds_list_add(movesList,bubbles,defenceCurl)
button=obj_squirtle_button
defenceCurlSprite=spr_defence_curl_squirtle


/*
load = function(saveDataTrainer){
loadPokemon(saveDataTrainer._squirtle)
}

save = function(saveDataTrainer){
savePokemon(saveDataTrainer._squirtle)
}
