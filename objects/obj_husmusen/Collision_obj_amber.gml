
if(!defeated and visible){
if(room=jansson_husmus_gym){
speed=0
lastroom_x=x; lastroom_y=y;
x=opponent_x; y=opponent_y;
if(!global.Jansson.defeated){
	save_game_before_battle()
	}
scr_goto_room(room_husmusen)
global.enemy=id
global.turn=TURNS.enemy
global.phase=PHASES.choosing}
}