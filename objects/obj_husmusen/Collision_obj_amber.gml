
if(!defeated and visible){
if(room=roomWorld){
speed=0
world_x=x; world_y=y;

if(!global.Jansson.defeated){
	save_game_before_battle()
	}
scr_goto_room(roomMatch)
global.enemy=id
global.turn=TURNS.enemy
global.phase=PHASES.choosing}
}