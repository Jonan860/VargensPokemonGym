function scr_perform_status_ailment() {
	if(ailmentIterator == 0){symptomize()}
	
	while(ailmentIterator < ds_list_size(statusAilmentList)) {
		var statusAilment = statusAilmentList[|ailmentIterator];
		ailmentIterator++
		with(statusAilment) {
			if(applied and willAnimate()) {
				scrStart(); exit;
			}
		}
	}
		
	ailmentIterator = 0
	var moveBlockedByAilment = asleep.applied or frozen.applied or (paralyzed.applied and paralyzed.symptomatic) or (confused.applied and confused.symptomatic)
	if(moveBlockedByAilment) {
		action_bar = max_action_bar
		scr_turn_decision()
	} else {global.move.scrStart()}
}
