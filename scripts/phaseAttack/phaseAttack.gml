// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function phaseAttack(){
return scrContains(global.phase,PHASES.attack, PHASES.attackHit, PHASES.attackMiss)
}