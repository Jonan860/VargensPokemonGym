enemyImageTransform = method(undefined, enemyRotateTransform)
event_inherited()
#macro PROJECTILE_SPEED 15
move_towards_point(opponent.x - 100 * !miss + 300 * miss, opponent.y - 100, PROJECTILE_SPEED)

