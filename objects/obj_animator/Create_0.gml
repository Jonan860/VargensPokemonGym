/// @description Insert description here
// You can write your code in this editor
depth-=1
miss=global.phase==PHASES.attackMiss

var isAmbersTurn=global.turn==TURNS.Amber
owner=real(global.amber.active_pokemon)*isAmbersTurn+real(global.enemy.active_pokemon)*!isAmbersTurn
opponent=real(global.enemy.active_pokemon)*isAmbersTurn+real(global.amber.active_pokemon)*!isAmbersTurn

if(!isAmbersTurn){enemyImageTransform()}
Xtranslation=0; Ytranslation=0;

struct=noone

