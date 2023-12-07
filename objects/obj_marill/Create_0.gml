
event_inherited()
max_HP = 120
HP = 120
type = ELEMENTALTYPES.water
damage = 1
name = "Marill"
global.marill = id
defence = 1
max_action_bar = 100
action_bar = max_action_bar
alive = 1
sound = sound_snorlax
rollout_bonus = 1
defenceCurl = new moveConstruct(MOVES.defenceCurl)
rollout = new moveConstruct(MOVES.rollout)
ds_list_add(movesList, defenceCurl, rollout)
xstart = x; ystart = y;
scr_ai = function() {
	global.move = defenceCurl.pp > 0 and defence_bonus < 2 ? defenceCurl : rollout 
}
defenceCurlSprite = spr_marill_roll
rolloutSprite = spr_marill_roll

