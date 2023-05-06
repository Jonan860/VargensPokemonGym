/// @description Insert description here
// You can write your code in this editor
with(struct.owner){
	if(speed==0){
	var opponent = other.opponent
			switch(global.phase){
		case PHASES.attackHit: move_towards_point(opponent.x+600,opponent.y+600,10) break;
		case PHASES.attackMiss: move_towards_point(room_width/2,opponent.y+600,10) break;
	}
	sprite_index=rolloutSprite
}

if(scrIsOutsideRoom()){
	sprite_index = object_get_sprite(object_index)
instance_destroy(other)
}
}