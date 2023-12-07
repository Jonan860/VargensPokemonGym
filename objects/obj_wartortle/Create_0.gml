event_inherited()
max_HP = 150;
HP = 150;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.water
damage = 1 + 1 / 3
name = "Wartortle"
global.wartortle = id
sound = sound_wartortle
bubble = new moveConstruct(MOVES.bubbles)
defenceCurl = new moveConstruct(MOVES.defenceCurl)
ds_list_add(movesList, defenceCurl, bubbles)

