if(!defeated and visible){
speed=0
world_x= x; world_y=y;
global.amber.moveable=0
global.enemy=id
global.turn=TURNS.enemy
global.phase=PHASES.choosing
save_game_before_battle()
scr_goto_room(room_teddy_match)
}