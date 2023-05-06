
with(owner.active_pokemon){
active=1
visible=1
action_bar+=max_action_bar/2
if(owner == global.amber){scr_create_move_buttons()}
}
scr_turn_decision()
instance_destroy()

