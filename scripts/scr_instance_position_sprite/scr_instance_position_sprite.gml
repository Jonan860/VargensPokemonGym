function scr_instance_position_sprite(xx, yy, obj) {
	with(obj){
	if(abs(xx-x)<sprite_width/2 and abs(yy-y)<sprite_height/2){
	return id
	exit;
	}
	}
}

function scrMouseOnImage() {
	return abs(mouse_x-x)<sprite_width/2 and abs(mouse_y-y)<sprite_height/2
}
