with(struct.owner) {
	if(scrIsOutsideRoom()) {
		sprite_index = object_get_sprite(object_index)
		instance_destroy(other)
	}
}