function scr_level_up() {
	level+=1
	exp_needed+=(power(level,4))*(level-4)
	HP*=level/(level-1)
	max_HP*=level/(level-1)
	defence*=level/(level-1)
	damage*=power(level/(level-1),2)
}
