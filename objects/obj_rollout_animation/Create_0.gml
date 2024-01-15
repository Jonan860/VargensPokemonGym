enemyImageTransform = method(undefined, doNothing)
event_inherited();
var opp = opponent
with(owner) {
	switch(global.phase) {
		case PHASES.attackHit : move_towards_point(opp.x, opp.y, PROJECTILE_SPEED) break;
		case PHASES.attackMiss : 
			var upperLeft = choose(0, 1)
			move_towards_point(opp.x - opp.sprite_xoffset + upperLeft * opp.sprite_width, opp.y - sprite_yoffset + (1 - upperLeft) * opp.sprite_height, PROJECTILE_SPEED) break;
	}
	sprite_index = rolloutSprite
}

