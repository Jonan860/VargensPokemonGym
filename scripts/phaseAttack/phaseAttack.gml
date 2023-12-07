function phaseAttack() {
	return scrContains(global.phase, PHASES.attack, PHASES.attackHit, PHASES.attackMiss)
}