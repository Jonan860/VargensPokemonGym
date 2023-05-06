function get_damage(moveDamage, ownerDamage, attack_bonus) {
	var damage=moveDamage*ownerDamage 
	if(attack_bonus>=0) return damage*(1+attack_bonus*stat_bonus)
	else return damage*1/(1-attack_bonus*stat_bonus)
}
