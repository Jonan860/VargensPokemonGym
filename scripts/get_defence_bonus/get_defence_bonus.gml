function get_defence_bonus(defence_bonus, defence) {
	return defence_bonus >= 0 ? (1 / (1 + defence_bonus * stat_bonus)) / defence : (1 - defence_bonus * stat_bonus) / defence
}
