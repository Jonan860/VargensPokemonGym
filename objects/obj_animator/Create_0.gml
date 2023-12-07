
depth -= 1
miss = global.phase == PHASES.attackMiss

owner = global.turn == TURNS.Amber ? global.amber.active_pokemon : global.enemy.active_pokemon
opponent = global.turn == TURNS.Amber ? global.enemy.active_pokemon : global.amber.active_pokemon

if(!global.turn == TURNS.Amber){enemyImageTransform()}
Xtranslation = 0; Ytranslation = 0;

struct = noone

