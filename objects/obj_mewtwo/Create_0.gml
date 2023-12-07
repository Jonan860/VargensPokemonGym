event_inherited();
max_HP = 200
HP = 200;
defence_bonus = 0;
attack_bonus = 0;
accuracy_bonus = 0; //remove
active = 0;
type = ELEMENTALTYPES.psychic;
damage = 1.5; /// psycutter gor 30 damage också
name = "Mewtwo"
global.mewtwo = id
sound = sound_mewtwo
if(room == difficulty){
	alarm[0] = 60 * room_speed
}

info_bubble = spr_mewtwo_info

psyCutter = new moveConstruct(MOVES.psyCutter)
ds_list_add(movesList, psyCutter)
button = obj_mewtwo_button

