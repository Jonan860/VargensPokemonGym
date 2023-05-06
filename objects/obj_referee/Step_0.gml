if(global.turn==noone){
if(global.enemy.active_pokemon==noone)
{global.turn=TURNS.enemy}
else if(instance_find(obj_amber,0).active_pokemon==noone){global.turn=TURNS.Amber}

if(global.enemy.active_pokemon!=noone){
if(global.enemy.active_pokemon.action_bar==0) global.turn=TURNS.enemy
}

with(obj_amber){
if(active_pokemon!=noone){
if(active_pokemon.action_bar==0) global.turn=TURNS.Amber
}

if(global.turn==noone and active_pokemon!=noone and global.enemy.active_pokemon!=noone){
global.enemy.active_pokemon.action_bar-=min(global.enemy.active_pokemon.action_bar,active_pokemon.action_bar)
active_pokemon.action_bar-=min(global.enemy.active_pokemon.action_bar,active_pokemon.action_bar)
}
}
}


