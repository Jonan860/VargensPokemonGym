/// @description Insert description here
// You can write your code in this editor

enemyImageTransform = method(undefined,enemyRotateTransform)
event_inherited()

Xtranslation = 0
Ytranslation = 0

constructHypnosisRing = function(){
	var ring = instance_create_depth(x,y,0,obj_hypnosis_ring)
	var target = opponent
	with(ring){
	struct=other.struct
	move_towards_point(target.x, target.y,16)
	}
	}


audio_play_sound(sound_hypnosis,0,0)
