
function get_type_bonus(type_self, victim) {
	var type_other = victim.type
	var positiveBonus = 1 + type_bonus
	var negativeBonus = 1 / (1 + type_bonus)
	var superNegativeBonus = 1 / (1 + 2 * type_bonus)
	switch (type_self) {
	case ELEMENTALTYPES.fire: 
	switch (type_other) {
		case ELEMENTALTYPES.grass : return positiveBonus; break;
		case ELEMENTALTYPES.fire : return negativeBonus; break;
		case ELEMENTALTYPES.water : return negativeBonus ;break;
		case ELEMENTALTYPES.rock : return negativeBonus; break;
		default: return 1; break;
	};break

	case ELEMENTALTYPES.grass:
	switch (type_other) {
		case ELEMENTALTYPES.grass : return negativeBonus; break;
		case ELEMENTALTYPES.fire : return negativeBonus; break;
		case ELEMENTALTYPES.water : return positiveBonus; break;
		case ELEMENTALTYPES.rock : return positiveBonus; break;
		case ELEMENTALTYPES.ground : return positiveBonus; break;
		default: return 1; break;
	}; break;

	case ELEMENTALTYPES.water:
		switch (type_other) {
			case ELEMENTALTYPES.grass : return negativeBonus; break;
			case ELEMENTALTYPES.fire : return positiveBonus; break;
			case ELEMENTALTYPES.water : return negativeBonus; break;
			case ELEMENTALTYPES.rock : return positiveBonus; break;
			case ELEMENTALTYPES.ground : return positiveBonus; break;
			case ELEMENTALTYPES.ghost : return 1 ;break;
			default: return 1; break;
		}; break;

	case ELEMENTALTYPES.psychic:
		switch (type_other){
			case ELEMENTALTYPES.psychic : return negativeBonus; break;
			default: return 1; break;
		}; break;

	case ELEMENTALTYPES.rock:
	switch (type_other){
		case ELEMENTALTYPES.grass : return 1; break;
		case ELEMENTALTYPES.fire : return positiveBonus; break;
		case ELEMENTALTYPES.ground : return negativeBonus; break;
		default: return 1; break;
	}; break;

	case ELEMENTALTYPES.normal:
	switch (type_other){
		case ELEMENTALTYPES.ghost : return superNegativeBonus;break;
		case ELEMENTALTYPES.rock : return negativeBonus;break;
		case ELEMENTALTYPES.steel : return negativeBonus;break;
		default: return 1;break;
	}

	case ELEMENTALTYPES.electric:
	switch (type_other) {
		case ELEMENTALTYPES.grass : return negativeBonus; break;
		case ELEMENTALTYPES.water : return positiveBonus; break;
		case ELEMENTALTYPES.electric : return  negativeBonus; break;
		case ELEMENTALTYPES.ground : return  superNegativeBonus; break;
		case ELEMENTALTYPES.ghost : return 1; break;
		default: return 1; break;
	}; break;


	case ELEMENTALTYPES.ground:
	switch (type_other) {
		case ELEMENTALTYPES.flying : return superNegativeBonus;break;
		case ELEMENTALTYPES.poison : return positiveBonus;break;
		case ELEMENTALTYPES.rock : return positiveBonus;break;
		case ELEMENTALTYPES.bug : return negativeBonus;break;
		case ELEMENTALTYPES.steel : return positiveBonus;break;
		case ELEMENTALTYPES.fire : return positiveBonus;break;
		case ELEMENTALTYPES.grass : return negativeBonus;break;
		case ELEMENTALTYPES.electric : return positiveBonus;break;
		case ELEMENTALTYPES.ghost : return 1; break;
		default: return 1;break;
	}

	case ELEMENTALTYPES.ghost:
		switch (type_other){
			case ELEMENTALTYPES.ghost : return positiveBonus;break;
			case ELEMENTALTYPES.psychic : return positiveBonus;break;
			case ELEMENTALTYPES.normal : return superNegativeBonus;break;
			default: return 1;break
		}
	}




}
