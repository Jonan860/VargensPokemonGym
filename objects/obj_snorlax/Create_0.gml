event_inherited()
max_HP = 300;
HP = 300;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.normal
damage = 1 + 1 / 3
name = "Snorlax"
global.snorlax = id
alive = 1
sleep = 0
xstart = x; ystart = y
sound = sound_snorlax
max_sleep = 100
zzz = 0
rest = new moveConstruct(MOVES.rest)
tackle = new moveConstruct(MOVES.tackle)
ds_list_add(movesList, rest, tackle)