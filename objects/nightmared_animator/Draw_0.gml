draw_sprite(spr_nightmare, global.spr_nightmare_frame, x, y)
global.spr_nightmare_frame += sprite_get_speed(spr_nightmare) % sprite_get_number(spr_nightmare)

