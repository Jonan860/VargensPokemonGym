

event_inherited();
max_HP=120
HP=120;
attack=1;
active=0;
type=ELEMENTALTYPES.electric;
damage=1; ////2
name="Pikachu"
sound=sound_pikachu
if(room==difficulty){alarm[0]=60*room_speed}

info_bubble=spr_pikachu_info


button=obj_pikachu_button

thunderShock=constructThunderShock()
thunder=constructThunder()
ds_list_add(movesList,thunderShock,thunder)

