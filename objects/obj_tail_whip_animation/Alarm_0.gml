count -= 1
if (count > 0) {
	owner.image_xscale *= -1
	alarm[0] = whipDuration
} else {
	image_xscale *= -1
	instance_destroy()
}
