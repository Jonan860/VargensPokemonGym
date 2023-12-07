if(other == global.current_self) {
	other.HP -= max(ceil(get_damage(STANDARD_MOVEDAMAGE, damage, attack_bonus) * get_defence_bonus(other.defence, other.defence_bonus) * get_type_bonus(ELEMENTALTYPES.normal, other.type)), 5)
	speed = 0
	x = xstart; y = ystart
	global.turn = TURNS.Amber
	global.phase = PHASES.choosing
}

