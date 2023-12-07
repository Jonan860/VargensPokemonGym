function scr_place_persistent_object() {
	if(instance_number(object_index) > 1) {
		var origin = instance_find(object_index,0)
		if(origin.id == id) {
			var origin = instance_find(object_index,1)
		}
		origin.x = x; origin.y = y
		origin.image_xscale = image_xscale; origin.image_yscale = image_yscale
		instance_destroy()
	}
}