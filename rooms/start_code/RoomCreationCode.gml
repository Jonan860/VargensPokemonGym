
global.phase=PHASES.world
global.player="ida"
global.last_room=noone
global.saveBeforeBattle = {}
global.saveData = {
_global : {saveBeforeBattle : {}}
}
global.amber=instance_create_depth(room_width/2,room_height-sprite_get_height(spr_amber),-10,obj_amber)
global.shopManager = instance_create_depth(0,0,0,shop_manager)







draw_set_color(c_green)
randomize()
room_goto_next()