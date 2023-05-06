function get_defence_bonus(defence_bonus, defence) {
	if(defence_bonus>=0){return (1/(1+defence_bonus*stat_bonus))*1/defence}
	else{return (1-defence_bonus*stat_bonus)*1/defence}
}
