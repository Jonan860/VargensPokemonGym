
function check_for_hit(target) {
	var acc = owner.accuracy_bonus - target.evasion_bonus
	if(acc >= 0){acc = 100 + acc * stat_bonus}
	else if(acc < 0){acc = 100 / (1 - acc * stat_bonus)}
	return random(100) <= acc * accuracy
}
