if(bubblesLeftToCreate > 0) {
	var closest = instance_nearest(opponent.x, opponent.y, obj_dreameater_bubble)
	if(abs(opponent.x - closest.x) > abs(opponent.x - owner.x) / 20) {
		instance_create_depth(opponent.x
		, opponent.y - opponent.sprite_height / 4 + 64 * random(1), 0,
		obj_dreameater_bubble)

		bubblesLeftToCreate -= 1
	}
}

if(!instance_exists(obj_dreameater_bubble)){instance_destroy()}







