if(!defeated and visible){
speed=0
lastroom_x=x; lastroom_y=y;
if(!global.Husmusen.defeated){
	save_game_before_battle()
	}
scr_goto_room(room_jansson)
global.enemy=id
global.turn=TURNS.enemy
global.phase=PHASES.choosing
}

