
	var x_translation = 64*((x<0)-(x>=room_width))
	var y_translation = sprite_height*((y<0)-(y>=room_height))
	var door=instance_position(x+x_translation,y+y_translation,obj_door)
	var leftside = room_width-sprite_width
	var rightside = sprite_width
	var upside = 0
	var downside = room_height - sprite_height
	if(door<0){x+=x_translation; y+=y_translation;}
	else{
		x += (x < 0)*(rightside-x) + (x > room_width)*(leftside-x)
		y += (y <= 0)*(downside-y) + (y >= room_height)*(upside-y)
		world_x = x;
		world_y = y;
	scr_goto_room(door.next_room)
	}