function scr_level_up() {
	level += 1
	exp_needed += power(level,4) * (level - 4)
	var improvementFactor = level / (level - 1)
	HP *= improvementFactor
	max_HP *= improvementFactor
	defence *= improvementFactor
	damage *= power(improvementFactor, 2)
}
