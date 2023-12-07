event_inherited();
max_HP = 120
HP = 120;
attack = 1;
active = 0;
type = ELEMENTALTYPES.electric;
damage = 1; ////2
name = "Pikachu"
global.pikachu = id
sound = sound_pikachu
if(room == difficulty) {
	alarm[0] = 60 * room_speed
}
global.pikachu = id

info_bubble = spr_pikachu_info


button = obj_pikachu_button

thunderShock = new moveConstruct(MOVES.thundershock)
thunder = new moveConstruct(MOVES.thunder)
ds_list_add(movesList, thunderShock, thunder)

