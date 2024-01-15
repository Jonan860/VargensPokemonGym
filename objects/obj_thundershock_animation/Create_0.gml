enemyImageTransform = method(undefined, doNothing)
event_inherited()
depth =- 1
Xtranslation = miss ? match_x - opponent_x + choose(-1, 1) * opponent.sprite_width : match_x - opponent_x
Ytranslation = (match_y - opponent_y) * (global.turn == TURNS.Amber ? -1 : 1)
