isUltimate=0
var isAmbersTurn=real(global.turn==TURNS.Amber)
owner=global.amber.active_pokemon*isAmbersTurn+global.enemy.active_pokemon*!isAmbersTurn
var movetowardsX=match_x*!isAmbersTurn+opponent_x*isAmbersTurn
var movetowardsY=match_y*!isAmbersTurn+opponent_y*isAmbersTurn
with(owner){
	move_towards_point(movetowardsX,movetowardsY,4)
	alarm[2]=room_speed/2
	}

