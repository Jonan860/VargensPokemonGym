
draw_sprite(spr_paralyzed, global.spr_paralyzed_frame, x, y)
global.spr_paralyzed_frame += sprite_get_speed(spr_paralyzed) % sprite_get_number(spr_paralyzed)



