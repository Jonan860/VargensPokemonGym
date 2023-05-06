if(global.phase=PHASES.pokeball){
switch(global.turn){
case TURNS.enemy: {
image_xscale*=0.1; image_yscale*=0.1;
path_start(path_ball_opponent,10,path_action_stop,1)
}; break;

case TURNS.Amber:{
image_xscale*=0.1; image_yscale*=0.1;
path_start(path_ball_self,10,path_action_stop,1)
}; break;
}
owner=0
}
