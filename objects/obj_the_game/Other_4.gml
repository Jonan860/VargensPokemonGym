/// @description Insert description here
// You can write your code in this editor

with(obj_enemy_trainer){roomStartSetup()}

if(scrContains(room, jansson_husmus_gym, room_teddy_gym)) {
	if(global.amber.defeated){
		defeatWorldSetup()
	}
	global.phase = PHASES.world
}


function defeatWorldSetup() {
	scrDefeatLoad()
	if(room = jansson_husmus_gym ){
		with(global.Jansson){winWorldSetup()}
		with(global.Husmusen){winWorldSetup()}
	}
	else{with(global.enemy){winWorldSetup()}}
	global.amber.defeatWorldSetup()
}

 function scrDefeatLoad() {
	   load_globals(global.saveBeforeBattle)
	   with(global.amber) load(global.saveBeforeBattle)
	   with(global.Jansson) load(global.saveBeforeBattle)
	   with(global.Husmusen) load(global.saveBeforeBattle)
	   with(obj_teddy) load(global.saveBeforeBattle)
}
	   
scr_background_music()