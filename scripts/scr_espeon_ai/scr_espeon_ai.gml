// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_espeon_ai() {
if(global.amber.active_pokemon.accuracy_bonus>-5 and sandAttack.pp>0){global.move=choose(sandAttack,sandAttack,confusion)}
else{global.move=confusion}
}
