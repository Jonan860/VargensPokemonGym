// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrIsOutsideRoom(){
return x < 0 or x > room_width+sprite_width or y < 0 or y > room_height+sprite_width
}