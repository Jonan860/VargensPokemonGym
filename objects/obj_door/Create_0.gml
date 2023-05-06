switch(room){
case jansson_husmus_gym: next_room=room_skalman; break;
case room_skalman:{
if(instance_position(x,y-64,obj_reinard_rav)>0){next_room=room_shop}
if(y=sprite_height/2){next_room=room_teddy_gym}
if(y==room_height-sprite_height/2){next_room = jansson_husmus_gym}
} break;
case room_teddy_gym: next_room=room_skalman; break;
}
