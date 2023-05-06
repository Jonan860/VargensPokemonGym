// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game(){

if !file_exists(keyboard_string + ".sav") exit;

var buffer = buffer_load(keyboard_string + ".sav")
var json = buffer_read(buffer, buffer_string)
buffer_delete(buffer)

var loadArray = json_parse(json)
global.saveData = array_get(loadArray, 0)


with(obj_trainer){instance_destroy()}


scr_goto_room(asset_get_index(global.saveData._room))

load_globals(global.saveData)


if(variable_struct_exists(global.saveData,"Amber")){
global.amber=instance_create_depth(0,0,0,obj_amber)
with(global.amber){load()}
}

if(variable_struct_exists(global.saveData,"Jansson")){//global sets in create
global.Jansson = instance_create_depth(0,0,0,obj_jansson)
with(global.Jansson){load()}
}

if(variable_struct_exists(global.saveData,"Husmusen")){
with(instance_create_depth(0,0,0,obj_husmusen)){load()}
}

if(variable_struct_exists(global.saveData,"Teddy")){
with(instance_create_depth(0,0,0,obj_teddy)){load()}
}

}

function load_game_defeat(){
with(obj_trainer){instance_destroy()}

scr_goto_room(asset_get_index(global.saveBeforeBattle._room))

global.phase = global.saveBeforeBattle._global.phase
global.turn = global.saveBeforeBattle._global.turn
global.background_music = global.saveBeforeBattle._global.background_music
global.enemy = global.saveBeforeBattle._global.enemy
global.last_room = global.saveBeforeBattle._global.last_room
global.move = global.saveBeforeBattle._global.move

if(variable_struct_exists(global.saveBeforeBattle,"Amber")){
global.amber=instance_create_depth(0,0,0,obj_amber)
with(global.amber){load(global.saveBeforeBattle)}
}

if(variable_struct_exists(global.saveBeforeBattle,"Jansson")){//global sets in create
global.Jansson = instance_create_depth(0,0,0,obj_jansson)
with(global.Jansson){load(global.saveBeforeBattle)}
}

if(variable_struct_exists(global.saveBeforeBattle,"Husmusen")){
with(instance_create_depth(0,0,0,obj_husmusen)){load(global.saveBeforeBattle)}
}

if(variable_struct_exists(global.saveBeforeBattle,"Teddy")){
with(instance_create_depth(0,0,0,obj_teddy)){load(global.saveBeforeBattle)}
}

}

function load_globals(saveStruct){
global.phase = saveStruct._global.phase
global.turn = saveStruct._global.turn
global.background_music = saveStruct._global.background_music
global.enemy = saveStruct._global.enemy
global.last_room = saveStruct._global.last_room
global.move = saveStruct._global.move
if(saveStruct == global.saveData){
global.saveBeforeBattle = saveStruct._global.saveBeforeBattle
}
}
