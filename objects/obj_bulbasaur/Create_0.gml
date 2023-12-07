event_inherited();
max_HP = 120
HP = 120;
attack = 20;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.grass;
damage = 1;
name = "Bulbasaur"
global.bulbasaur = id
alarm_counter = 5
sound = sound_bulbasaur
if(room == difficulty) {
	alarm[0] = 50 * room_speed
}

info_bubble = spr_bulbasaur_info

growl = new moveConstruct(MOVES.growl)
vineWhip = new moveConstruct(MOVES.vineWhip)
ds_list_add(movesList, growl, vineWhip)

button = obj_bulbasaur_button
