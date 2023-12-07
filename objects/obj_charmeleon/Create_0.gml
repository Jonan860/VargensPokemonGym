event_inherited()
max_HP = 150;
HP = 150;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.fire
damage = 1 + 1 / 3
name = "Charmeleon"
global.charmeleon = id
sound = sound_charmeleon
ember = new moveConstruct(MOVES.ember)
tailWhip = new moveConstruct(MOVES.tailWhip)
ds_list_add(movesList, ember, tailWhip)

