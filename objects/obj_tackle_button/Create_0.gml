isUltimate = 0
var isAmbersTurn = global.turn == TURNS.Amber
owner = isAmbersTurn ? global.amber.active_pokemon : global.enemy.active_pokemon
var movetowardsX = isAmbersTurn ? opponent_x : match_x
var movetowardsY = isAmbersTurn ? opponent_y : match_y
with(owner) {
	move_towards_point(movetowardsX, movetowardsY, 4)
	alarm[2] = room_speed / 2
}

