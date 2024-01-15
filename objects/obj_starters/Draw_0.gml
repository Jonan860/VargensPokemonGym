event_inherited()
scrSetContrastingTextColor()
switch(room) {
	case difficulty : draw_self(); break
	
	case room_inventory :
		draw_self()
		draw_set_halign(fa_right);
		draw_text(x - sprite_width * (1/2 + 1/8), y - sprite_height * 1/6, "Level " + string(level))
		draw_text(x - sprite_width * (1/2 + 1/8), y - sprite_height * 1/3, name)
		draw_text(x - sprite_width * (1/2 + 1/8), y, "HP : " + string(HP) + "/" + string(max_HP))
		status_text = ""
		concatenateAilmentText()
		draw_text(x - sprite_width * (1/2 + 1/8), y + sprite_height * 1/6, status_text)
		draw_set_color(c_green)
		resetDrawAlign()
		break;
	case room_sakura_daycare :
		draw_self()
		old_halign = draw_get_halign()
		draw_set_halign(fa_left);
		draw_text(x + sprite_width * (1/2 + 1/8), y - sprite_height * 1/6, "Level " + string(level))
		draw_text(x + sprite_width * (1/2 + 1/8), y - sprite_height * 1/3, name)
		draw_text(x + sprite_width * (1/2 + 1/8), y, "HP : " + string(HP) + "/" + string(max_HP))
		status_text = ""
		concatenateAilmentText()
		draw_text(x - sprite_width * (1/2 + 1/8), y + sprite_height * 1/6, status_text)
		draw_set_color(c_green)
		resetDrawAlign()
		break;
}






