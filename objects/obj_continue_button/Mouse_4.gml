
switch(room) {
	case room_husmusen:
		if(global.Jansson.defeated){global.amber.moveable = 1};
		
		room_goto(room_jansson_husmus_gym); break;

	case room_jansson:
		if(global.Husmusen.defeated){global.amber.moveable = 1}
		
		room_goto(room_jansson_husmus_gym); break;

	case room_teddy_match: 
		room_goto(global.amber.defeated ? room_teddy_gym : room_win); break;
}
