
function get_type_bonus(type_self, victim) {
	var type_other=victim.type
	switch (type_self){
	case ELEMENTALTYPES.fire: 
	switch (type_other){
	case ELEMENTALTYPES.grass:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.fire:
	return 1/(1+type_bonus);break;
	case ELEMENTALTYPES.water:
	return 1/(1+type_bonus);break;
	case ELEMENTALTYPES.rock:
	return 1/(1+type_bonus);break;
	default: return 1; break;
	};break

	case ELEMENTALTYPES.grass:
	switch (type_other){
	case ELEMENTALTYPES.grass:
	return 1/(1+type_bonus); break;
	case ELEMENTALTYPES.fire:
	return 1/(1+type_bonus); break;
	case ELEMENTALTYPES.water:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.rock:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.ground:
	return 1+type_bonus; break;
	default: return 1; break;
	}; break;

	case ELEMENTALTYPES.water:
	switch (type_other){
	case ELEMENTALTYPES.grass:
	return 1/(1+type_bonus); break;
	case ELEMENTALTYPES.fire:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.water:
	return 1/(1+type_bonus); break;
	case ELEMENTALTYPES.rock:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.ground:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.ghost:
	return 1 ;break;
	default: return 1; break;
	}; break;

	case ELEMENTALTYPES.psychic:
	switch (type_other){
	case ELEMENTALTYPES.psychic:
	return 1/(1+type_bonus); break;
	default: return 1; break;
	}; break;

	case ELEMENTALTYPES.rock:
	switch (type_other){
	case ELEMENTALTYPES.grass:
	return 1; break;
	case ELEMENTALTYPES.fire:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.ground:
	return 1/(1+type_bonus); break;
	default: return 1; break;
	}; break;

	case ELEMENTALTYPES.normal:
	switch (type_other){
	case ELEMENTALTYPES.ghost:
	return 1/(1+type_bonus*2);break;
	case ELEMENTALTYPES.rock:
	return 1/(1+type_bonus);break;
	case ELEMENTALTYPES.steel:
	return 1/(1+type_bonus);break;
	default: return 1;break;
	}

	case ELEMENTALTYPES.electric:
	switch (type_other){
	case ELEMENTALTYPES.grass:
	return 1/(1+type_bonus); break;
	case ELEMENTALTYPES.water:
	return 1+type_bonus; break;
	case ELEMENTALTYPES.electric:
	return  1/(1+type_bonus); break;
	case ELEMENTALTYPES.ground:
	return  1/(1+2*type_bonus); break;
	case ELEMENTALTYPES.ghost:
	return 1; break;
	default: return 1; break;
	}; break;


	case ELEMENTALTYPES.ground:
	switch (type_other){
	case ELEMENTALTYPES.flying:
	return 1/(1+type_bonus*2);break;
	case ELEMENTALTYPES.poison:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.rock:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.bug:
	return 1/(1+type_bonus);break;
	case ELEMENTALTYPES.steel:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.fire:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.grass:
	return 1/(1+type_bonus);break;
	case ELEMENTALTYPES.electric:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.ghost:
	return 1; break;
	default: return 1;break;
	}

	case ELEMENTALTYPES.ghost:
	switch (type_other){
	case ELEMENTALTYPES.ghost:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.psychic:
	return 1+type_bonus;break;
	case ELEMENTALTYPES.normal:
	return 1/(1+2*type_bonus);break;
	default: return 1;break
	}
	}




}
