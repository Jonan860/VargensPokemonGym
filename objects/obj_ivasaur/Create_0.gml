event_inherited()
max_HP = 150;
HP = 150;
defence_bonus = 0;
attack_bonus = 0;
active = 0;
type = ELEMENTALTYPES.grass
damage = 1 + 1 / 3
name = "Ivasaur"
global.ivasaur = id
alive = 1
sound = sound_ivasaur
vineWhip = new moveConstruct(MOVES.vineWhip)
growl = new moveConstruct(MOVES.growl)
ds_list_add(movesList, vineWhip, growl)
