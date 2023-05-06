
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.ghost
damage=1
name="Gastly"
defence=1
max_action_bar=100
action_bar=max_action_bar
alive=1
sound=sound_snorlax
hypnosis=constructHypnosis()
nightmare=constructNightmare()
lick=constructLick()
ds_list_add(movesList,hypnosis,nightmare,lick)
xstart=x; ystart=y;
scr_ai = method(undefined, scr_gastly_ai)
