function scr_gastly_ai() {
var target=getOpponent()
	if(!target.asleep.applied and hypnosis.pp>0) {global.move=hypnosis}
	else if(target.asleep.applied and !target.nightmared.applied){global.move = nightmare}
	else {global.move=lick}
}
