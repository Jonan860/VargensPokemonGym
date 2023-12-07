
if(global.phase = PHASES.chooseItem){
	sprite_index = spr_cancel_button
	if(sprite_height > 32) {image_yscale *= 1 / 2}
} else {	
	sprite_index = spr_item_button
	if(sprite_height < 32){image_yscale *= 2}
}
draw_self()