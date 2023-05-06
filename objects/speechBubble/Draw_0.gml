/// @description Insert description here
// You can write your code in this editor

var storedvalign = draw_get_valign()
var storedhalign = draw_get_halign()

draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_text(0,0,txt)

draw_set_valign(storedvalign)
draw_set_halign(storedhalign)