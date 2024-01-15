enemyImageTransform = method(undefined, enemyRotateTransform)
event_inherited()
sound = sound_leer
image_yscale *= (match_y - opponent_y) / sprite_get_height(spr_leer)
image_xscale *= (match_x - opponent_x) / sprite_get_width(spr_leer)
image_xscale *= miss ? 0.5 : 1
Xtranslation = sprite_width
Ytranslation = sprite_height * (global.turn == TURNS.Amber ? -1 : 1)
