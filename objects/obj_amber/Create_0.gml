event_inherited()
#macro DAYCAREHEAL 40
name="Amber"
depth=-10
moveable=1
active_pokemon=noone
charmander=instance_create_depth(x,y,0,obj_charmander)
squirtle=instance_create_depth(x,y,0,obj_squirtle)
geodude=instance_create_depth(x,y,0,obj_geodude)
mewtwo=instance_create_depth(x,y,0,obj_mewtwo)
bulbasaur=instance_create_depth(x,y,0,obj_bulbasaur)
pikachu=instance_create_depth(x,y,0,obj_pikachu)
ds_list_add(pokemonList,geodude,mewtwo,bulbasaur,charmander,squirtle,pikachu)
for(var i=0;i<ds_list_size(pokemonList);i++){
var pokemon= ds_list_find_value(pokemonList,i)
with(pokemon){
x=match_x; y=match_y;
owner=other.id
}
}

daycareList = ds_list_create() 
pokemonCompanionList = ds_list_create()
ds_list_add(pokemonCompanionList,geodude,mewtwo,bulbasaur,charmander,squirtle,pikachu)

world_x=x; world_y=y;

function item(effect_,_price,object_,_name, _button, _appliable) constructor {
name = _name	
count = 0;
countSaved = 0;
price = _price;
appliable = method(undefined, _appliable)
effect = method(undefined, effect_)
apply = function(){
	count-=1
	with(global.amber.active_pokemon){
	other.effect()
	action_bar=max_action_bar
	}
	
	};
object=object_
button=_button
load = function(struct){
	count = struct.count
	countSaved = struct.countSaved
	price = struct.price
}
}

fullHeal = new item(fullHealEffect,350,obj_full_heal,"Full Heal", obj_full_heal_button, fullHealAppliable)
burnHeal = new item(burnHealEffect,200,obj_burn_heal,"Burn Heal", obj_burn_heal_button, burnedAppliable)
potion = new item(potionSuperPotionEffect,200,obj_potion, "Potion", obj_potion_button, potionSuperPotionAppliable)
with(potion){healAmount = 40}
iceHeal = new item(iceHealEffect,200,obj_ice_heal, "Ice Heal", obj_ice_heal_button, iceHealAppliable)
awakening = new item(awakeningEffect,200,obj_awakening, "Awakening", obj_awakening_button, awakeningAppliable)
superPotion = new item(potionSuperPotionEffect,500,obj_super_potion," Super Potion", obj_super_potion_button, potionSuperPotionAppliable)
with(superPotion){healAmount = 80}
paralyzeHeal = new item(paralyzeHealEffect,200,obj_paralyze_heal, "Paralyze Heal", obj_paralyze_heal_button, paralyzedHealAppliable)
antidote = new item(antidoteEffect,200,obj_antidote, "Antidote", obj_antidote_button, antidoteAppliable)
potionBag =ds_list_create()
ds_list_add(potionBag,fullHeal,burnHeal,potion,iceHeal,awakening,superPotion,paralyzeHeal,
antidote)

for(var i=0;i<ds_list_size(potionBag);i++){
	var pot=potionBag[|i]
	pot.owner=id	
}

money=10000
defeated=0
global.spr_nightmare_frame=0
global.spr_paralyzed_frame=0

function scrAmberDefeated(){
	if(defeated=1 and isBattleRoom() and global.phase!=PHASES.defeated){
		global.phase=PHASES.defeated
		active_pokemon.visible = 0
		active_pokemon = noone
		with(obj_move_button){instance_destroy()}
		with(obj_switch_pokemon_button){instance_destroy()}
		with(obj_item_button_choose){instance_destroy()}
	}
}

daycareHeal = function(){
var varDaycareHeal = scr_get_daycare_heal()
	for(var i = 0; i < ds_list_size(daycareList); i++){	
	daycareList[|i].daycareHeal(varDaycareHeal)
	}
	}

defeatWorldSetup = function(){
	daycareHeal()
	x=room_width/2
	y=room_height-sprite_height
	defeated = 0
		}
		
		
scrDeath = function(){
	if(active_pokemon.HP<=0 and active_pokemon.alive){
	active_pokemon.die()
	global.turn = TURNS.Amber
	global.phase=PHASES.choosing
	
	active=1

if(!isListAlive( pokemonCompanionList)){
	loseSetup() 
	}
}
}

loseSetup=function(){
	defeated = 1
	with(obj_move_button){instance_destroy()}
	with(obj_switch_pokemon_button){instance_destroy()}
	with(obj_item_button_choose){instance_destroy()}
	global.enemy.active_pokemon.visible = 0
	global.enemy.visible = 1
	visible = 1
	global.phase=PHASES.defeated
	}

scrDefeated= method(undefined,scrAmberDefeated)
scrEnterBuilding = method(undefined,scr_amber_enter_building)
scrSwitchPokemon = method(undefined,scr_amber_switch_pokemon)
scrPerformStatusAilment=method(undefined,scr_amber_perform_status_ailment)
scrSetMovable= function(){if(room=jansson_husmus_gym and moveable=0 and y>700) moveable=1}
scrMovement = function() {
	if(moveable){
	var x_translation=64*(keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left))
	var y_translation=64*(keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up))
	var blocker=instance_position(x+x_translation,y+y_translation,obj_trainer)
	if(blocker<0){x+=x_translation; y+=y_translation}
	
	else if(blocker.defeated){x+=x_translation; y+=y_translation}
	}
}

getOpponent = function(){return global.enemy}


save = function(saveStruct = global.saveData){
	if(global.phase == PHASES.world){
	world_x = x; world_y = y
	}
saveStruct.Amber = {
	_x : x,
    _y : y,
	_visible : visible,
	_world_x : world_x,
	_world_y : world_y,
	_money : money,
    _defeated : defeated,
	_moveable : moveable,
	_fullHeal : fullHeal,
	_burnHeal : burnHeal,
	_potion : potion,
	_iceHeal : iceHeal,
	_awakening : awakening,
	_superPotion : superPotion,
	_paralyzeHeal : paralyzeHeal,
	_antidote : antidote,
	_active_pokemon : noone
}

for(var i= 0; i < ds_list_size(pokemonList); i++){
var pokemon = pokemonList[|i]
pokemon.save(saveStruct)
}

}

load = function(saveStruct = global.saveData){
var s = saveStruct.Amber
var beforeBattle = saveStruct == global.saveBeforeBattle

x = ifElseReturn(beforeBattle, room_width/2, s._x)
y = ifElseReturn(beforeBattle, room_height-sprite_height, s._y)
visible =s._visible;

world_x = ifElseReturn(beforeBattle, x, s._world_x) ;
world_y = ifElseReturn(beforeBattle, y, s._world_y);
money = s._money
defeated = s._defeated
moveable = ifElseReturn(beforeBattle, 1, s._moveable)

fullHeal.load(s._fullHeal)
burnHeal.load(s._burnHeal)
potion.load(s._potion)
iceHeal.load(s._iceHeal)
awakening.load(s._awakening)
superPotion.load(s._superPotion)
paralyzeHeal.load(s._paralyzeHeal)
antidote.load(s._antidote)

ds_list_clear(potionBag)
ds_list_add(potionBag,fullHeal,burnHeal,potion,iceHeal,awakening,superPotion,paralyzeHeal,
antidote)


ds_list_clear(daycareList)
ds_list_clear(pokemonCompanionList)
for(var i = 0; i < ds_list_size(pokemonList); i++){
with(pokemonList[|i]){
load(saveStruct)
if(daycare){ds_list_add(owner.daycareList,id)}
else(ds_list_add(owner.pokemonCompanionList,id))
}
}

if(active_pokemon == noone){active_pokemon = pokemonCompanionList[|0]}
}



