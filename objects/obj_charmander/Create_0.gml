event_inherited();
max_HP=120
HP=120;

defence_bonus=0;
attack_bonus=0;
active=0;
type=ELEMENTALTYPES.fire;
damage=1;
name="Charmander"
alarm_counter=5
sound=sound_charmander

if(room=difficulty){
appear=0
alarm[1]=30*room_speed
}

info_bubble=spr_charmander_info

tailWhip=constructTailWhip()
ember=constructEmber()
ds_list_add(movesList,tailWhip,ember)

button=obj_charmander_button




