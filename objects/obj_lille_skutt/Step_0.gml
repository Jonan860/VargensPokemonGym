if(room!=difficulty){
team_alive=0
number_alive=0
with(obj_opponent){
other.team_alive=sign(other.team_alive+alive)
other.number_alive+=alive
}

if (global.phase==PHASES.lilleSkutt){
if (move){move_towards_point(x-10,y,10)} else if (alarm[0]<=0){alarm[0]=30}

if (x<-sprite_width){global.phase=PHASES.pokeball;}
}

if(global.phase==PHASES.pokeball){
active=0
move=0
speed=0
x=xstart; y=ystart;

if(number_alive>1){
n=-1
while(n==-1){
n=choose(obj_charmeleon,obj_ivasaur,obj_wartortle)
if(instance_find(n,1).alive){global.current_opponent=instance_find(n,1)}else{n=-1}
}
}

if(number_alive==1){global.current_opponent=instance_find(obj_snorlax,1)}
instance_create_depth(500,500,0,obj_poke_ball)
global.phase=PHASES.pokeball
}

if(team_alive==0 and global.phase!=PHASES.winning){
global.phase=PHASES.winning//////////////////////////////////////bugfix?
scr_goto_room(winner)
}
}
else if(appear) {image_alpha+=0.1}





