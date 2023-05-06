// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function displayPokemonList(xx,yy,xscale,yscale,list){
with(global.amber){
for(var i = 0; i < ds_list_size(list); i++){

with(list[|i]){
	image_xscale = xscale
	image_yscale = yscale
	yy += sprite_height/2
	visible = 1
	x = xx
	y = yy
	yy += sprite_height/2
}

}
}
}