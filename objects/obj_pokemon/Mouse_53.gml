if(visible) {
	if(scrMouseOnImage()) {
		switch(global.phase) {
			case PHASES.sakuradaycaredropof : 
				moveToDaycare()
				with(obj_drop_of_button) visible = 1; break;

			case PHASES.sakuradaycareretrieve :
				daycareRetrieve()
				with(obj_retreive_button) visible = 1; break;
		}
	}
}