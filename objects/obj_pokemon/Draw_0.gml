if(active and room != room_inventory) {
	scrSetContrastingTextColor()
	
	var varStatusString = string_hash_to_newline("        Stats #"
	+ "Defence Bonus  : " + string(defence_bonus) + "#"
	+ "Attack Bonus   : " + string(attack_bonus) + "#"
	+ "Accuracy Bonus : " + string(accuracy_bonus))
	var statusTextY = owner == global.amber ? room_height - string_height(varStatusString) * 3/2 : string_height(varStatusString) /2
	draw_text(room_width /2 - string_width(varStatusString) / 2, statusTextY, varStatusString )
	status_text = ""
	concatenateAilmentText()
	draw_self();
		
	var healthbarYtop = ystart - sprite_yoffset * image_yscale - 2 * string_height("LEVEL")
	var healthbarYbottom = healthbarYtop + string_height("LEVEL")
	var healthbarLeft = xstart - sprite_xoffset * sign(image_xscale)
	var healthbarRight = xstart + image_xscale * (-sprite_xoffset + sprite_width)
	draw_healthbar(healthbarLeft, healthbarYtop,
					healthbarRight, healthbarYbottom, HP / max_HP * 100, c_black, c_red, c_lime, 0, true, true);		
	draw_healthbar(healthbarLeft, healthbarYbottom,
					healthbarRight, healthbarYbottom + string_height("LEVEL") / 8, action_bar/max_action_bar * 100, c_black, c_yellow, c_white, 0, true, true)
	draw_text(xstart - sprite_xoffset * sign(image_xscale), healthbarYtop - string_height("Level"), name + "  Level " + string(level) + "  " + status_text)
	draw_text(xstart + sign(image_xscale) * (-sprite_xoffset  + sprite_width), healthbarYtop, " HP : " + string(HP))
	draw_set_color(c_green)
}