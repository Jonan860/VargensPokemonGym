function get_damage(moveDamage, ownerDamage, attack_bonus) {
	var damage = moveDamage * ownerDamage 
	return attack_bonus >= 0 ? damage * (1 + attack_bonus * stat_bonus) : damage * 1 / (1 - attack_bonus * stat_bonus)
}
