
function damage_calculate(victim) {
	var attackBonus = owner.attack_bonus
	var typeBonus = get_type_bonus(elementalType, victim)
	var defenceWithBonus = get_defence_bonus(victim.defence_bonus, victim.defence)
	var defenceWithoutBonus = get_defence_bonus(0, victim.defence)
	var damageWithBonus = get_damage(damage, owner.damage, attackBonus)
	var damageWithoutBonus = get_damage(damage, owner.damage, 0)
	switch(damageParadigm) {
		case DAMAGEPARADIGMS.normal : if(critChance <= random(100)) return ceil(damageWithBonus * defenceWithBonus * typeBonus)
		else{return ceil(2 * max(damageWithBonus * defenceWithBonus * typeBonus, damageWithoutBonus * defenceWithoutBonus * typeBonus))}; break;
		case DAMAGEPARADIGMS.percentageOfMaxHP : return ceil(victim.max_HP * damage / 100); break;
		case DAMAGEPARADIGMS.percentageOfHP : return ceil(victim.HP * damage / 100); break;
		case DAMAGEPARADIGMS.fixed : return ceil(damage); break;
		case DAMAGEPARADIGMS.riddles : return ceil(number_correct_answer * damageWithBonus * defenceWithBonus * typeBonus); break;
		case DAMAGEPARADIGMS.elementless : return ceil(damageWithBonus * defenceWithBonus)
	}
}
