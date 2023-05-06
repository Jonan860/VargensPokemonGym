/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(obj_hypnosis_ring)){constructHypnosisRing()}

with(obj_hypnosis_ring){
if(abs(x-other.opponent.x)<9){
	if(instance_number(obj_hypnosis_ring)==1){
	with(obj_hypnosis_animation){instance_destroy(); exit}
	}
instance_destroy()
}
}

var nearest = instance_nearest(x,y,obj_hypnosis_ring)

if(audio_is_playing(sound_hypnosis)){
if(abs(nearest.x-x)>abs(struct.owner.x-opponent.x)/6){constructHypnosisRing()}
}




