event_inherited();
max_HP = 120
HP = 120;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.water;
damage = 1;
name = "Squirtle"
global.squirtle = id
alarm_counter = 5
sound = sound_squirtle
if(room == difficulty) {
	appear = 0
	alarm[1] = 30 * room_speed
}
info_bubble = spr_squirtle_info
bubbles = new moveConstruct(MOVES.bubbles)
defenceCurl = new moveConstruct(MOVES.defenceCurl)
ds_list_add(movesList, bubbles, defenceCurl)
button = obj_squirtle_button
defenceCurlSprite = spr_defence_curl_squirtle