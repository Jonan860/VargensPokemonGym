event_inherited();
max_HP = 120
HP = 120;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.rock;
damage = 1;
name = "Geodude"
global.geodude = id
alarm_counter = 5
sound = sound_its_geodude

if(room=difficulty) {
	alarm[0] = 45 * room_speed
}

info_bubble = spr_geodude_info
defenceCurl = new moveConstruct(MOVES.defenceCurl)
defenceCurlSprite = spr_geodude_defence_curl
leer = new moveConstruct(MOVES.leer)
rockThrow = new moveConstruct(MOVES.rockThrow)
ds_list_add(movesList, defenceCurl, leer, rockThrow)


button = obj_geodude_button

