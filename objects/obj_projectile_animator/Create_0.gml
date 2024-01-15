enemyImageTransform = method(undefined, enemyRotateTransform)
event_inherited()
#macro PROJECTILE_SPEED 15
Xtranslation = owner.sprite_width / 4
Ytranslation = owner.sprite_height / 4 * (global.turn == TURNS.Amber ? -1 : 1)
