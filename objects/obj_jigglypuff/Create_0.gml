
event_inherited()

max_HP=120
HP=120
type=ELEMENTALTYPES.normal
damage=1
name="Jigglypuff"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sound=sound_snorlax
sing=constructSing()
defenceCurl=constructDefenceCurl()
tackle=constructtackle()
ds_list_add(movesList,defenceCurl,tackle,sing)
xstart=x; ystart=y;
scr_ai = method(undefined, scr_jigglypuff_ai)

defenceCurlSprite = spr_jigglypuff_defence_curl

