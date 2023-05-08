event_inherited()

if(room=difficulty){draw_self()}
else{
if(active=1 and room!=room_inventory){
draw_text(426,416,string_hash_to_newline("Stats"))
draw_text(394,436,string_hash_to_newline("Defence Bonus : "+string(defence_bonus)))
draw_text(394,456,string_hash_to_newline("Attack Bonus : "+string(attack_bonus)))
draw_text(394,476,string_hash_to_newline("Accuracy Bonus : "+string(accuracy_bonus)))
status_text=""
concatenateAilmentText()
draw_text(x,y-175,status_text)
draw_self();
draw_healthbar(x-80,y-100,x+80,y-120,HP/max_HP*100, c_black, c_red, c_lime, 0, true, true);
//draw_healthbar(x-80,y-150,x+80,y-120,action_bar/max_action_bar*100, c_black, c_white, c_lime, 0, true, true);

draw_text(x-50,y-100,"Level "+string(level))
draw_text(x,y-150,string_hash_to_newline(name))
draw_text(x+90,y-120,string_hash_to_newline("HP : "+string(HP)))
}
else if(room=room_inventory){
old_color=draw_get_color()
draw_set_color(c_teal)
draw_self()
old_halign=draw_get_halign()
draw_set_halign(fa_right);
draw_text(x-sprite_width*(1/2+1/8),y-sprite_height*1/6,"Level "+string(level))
draw_text(x-sprite_width*(1/2+1/8),y-sprite_height*(1/3),name)
draw_text(x-sprite_width*(1/2+1/8),y,"HP : "+string(HP) + "/" + string(max_HP))
status_text=""
concatenateAilmentText()
draw_text(x-sprite_width*(1/2+1/8),y+sprite_height*(1/6),status_text)
draw_set_color(old_color)
draw_set_halign(old_halign)
}
else if(room = room_sakura_daycare){
old_color=draw_get_color()
draw_set_color(c_teal)
draw_self()
old_halign=draw_get_halign()
draw_set_halign(fa_left);
//draw_healthbar(x-sprite_width*(1/2+1/8),y-sprite_height*(1/2+1/6),x+sprite_width*1/2,y-sprite_height*(1/2+1/8),HP/max_HP*100, c_black, c_red, c_lime, 0, true, true);
draw_text(x+sprite_width*(1/2+1/8),y-sprite_height*1/6,"Level "+string(level))
draw_text(x+sprite_width*(1/2+1/8),y-sprite_height*(1/3),name)
draw_text(x+sprite_width*(1/2+1/8),y,"HP : "+string(HP) + "/" + string(max_HP))
status_text=""
concatenateAilmentText()
draw_text(x-sprite_width*(1/2+1/8),y+sprite_height*(1/6),status_text)
draw_set_color(old_color)
draw_set_halign(old_halign)
}
if(room==winner){draw_self()}

if (info and active){draw_sprite(info_bubble,0,x+sprite_width/8,y-sprite_get_height(info_bubble))}

}



