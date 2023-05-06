function scr_drowsee_ai() {
	var target = global.amber.active_pokemon
	var lessHalf = HP < max_HP/2
var maxedHP = HP == max_HP
var sleeped = target.asleep.applied
/*
global.move =  sleeped * ( maxedHP * confusion +!maxedHP * dreameater) +!sleeped * (lessHalf * hypnosis + !lessHalf * confusion)
*/
global.move = ifElseReturn(sleeped,
							ifElseReturn(maxedHP, confusion, dreamEater),
							ifElseReturn(lessHalf, hypnosis, confusion))
}
/*var sleepcount=target.asleep.turnsLeft
	if(HP<max_HP/2 and !target.asleep.applied) {
		if(hypnosis.pp>0){global.move = hypnosis}
		else{global.move = confusion}
	}
	else if(HP>=max_HP/2 and !target.asleep.applied){global.move = confusion}
	else if(sleepcount>0 and HP=max_HP){global.move = confusion}
	else if(target.asleep.count>0 and HP<max_HP){
	global.move = dreamEater
	}
*/
/*
switch(target.asleep.applied){
case false : 
	switch(HP < max_HP/2){
	case false : global.move = confusion ; break;
	case true :  global.move =  hypnosis ; break ;
}; break;
case true : 
	switch(HP == max_HP){
	case false : global.move = dreamEater; break;
	case true : global.move = confusion; break;
	}; break;
}
*/

