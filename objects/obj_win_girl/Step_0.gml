if(global.phase==PHASES.trainerMoving and global.turn=TURNS.Amber){
if(x>room_width+200){
global.phase=PHASES.pokeball
active=0

with(obj_starters_button){instance_destroy()}

instance_create_depth(x,y,0,obj_poke_ball)
}
else move_towards_point(x+100,y,10)
}
else{x=xstart; y=ystart;}

team_alive=0
with(obj_starters){other.team_alive=sign(other.team_alive+alive)}

if(team_alive==0 and global.phase!=PHASES.defeated){
global.phase=PHASES.defeated
scr_goto_room(loser)
}

if(room=difficulty and appear) {image_alpha+=0.1}

info = distance_to_point(mouse_x,mouse_y)<=0






