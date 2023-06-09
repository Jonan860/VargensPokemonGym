/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited()

camping = noone
defeated = noone
moveable = noone

scrDeath = function(){

	if(active_pokemon.HP<=0 and active_pokemon.alive){
	active_pokemon.die()
	with(global.amber.active_pokemon){scr_gain_experience()}
	global.turn = TURNS.enemy
 if(isListAlive(pokemonList)){
	global.phase=PHASES.choosing
	active=1
	}
	else{loseSetup()}
}
}

loseSetup=function(){
	defeated = 1
	with(obj_move_button){instance_destroy()}
	with(obj_switch_pokemon_button){instance_destroy()}
	with(obj_item_button_choose){instance_destroy()}
	global.amber.active_pokemon.visible = 0
	global.amber.visible = 1
	visible = 1
	global.phase=PHASES.defeated
	}

winWorldSetup = function(){
x=world_x; y=world_y
camping=1
}

roomStartSetup = function(){
switch(room){
case roomMatch : {
world_x = x; world_y = y
x=opponent_x; y=opponent_y;
global.enemy=id
}; break;
case roomWorld: {
x=world_x; y=world_y;
visible=1
}; break;
default : visible = 0
}
}

load = function(saveStruct = global.saveData){
var s = variable_struct_get(saveStruct,name)
x = s._x
y = s._y
image_xscale = s._image_xscale
image_yscale = s._image_yscale
world_x=s._world_x; world_y=s._world_y;
//lastroom_x = s._lastroom_x; lastroom_y = s._lastroom_y
wait = s._wait
camping = s._camping
defeated=s._defeated
moveable = s._moveable
visible = s._visible
speed = s._speed
direction = s._direction
for(var i = 0; i < ds_list_size(pokemonList); i++){
with(pokemonList[|i]){load(saveStruct)}
}
if(active_pokemon == noone){active_pokemon = pokemonList[|0]}

}

save = function(saveStruct = global.saveData){

var insert = {
	_x : x,
    _y : y,
	_image_xscale : image_xscale,
	_image_yscale : image_yscale,
	_world_x : world_x,
	_world_y : world_y,
//	_lastroom_x : lastroom_x,
//	_lastroom_y : lastroom_y,
	_wait : wait,
	_camping : camping,
    _defeated : defeated,
	_moveable : moveable,
	_active_pokemon : noone,
	_speed : speed,
	_direction : direction,
	_visible : visible
}
variable_struct_set(saveStruct,name,insert)

for(var i= 0; i < ds_list_size(pokemonList); i++){
var pokemon = pokemonList[|i]
pokemon.save(saveStruct)
}

}

