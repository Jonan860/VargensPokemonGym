image_xscale=-1
if active=1
{
var pc;
pc = (HP / max_HP) * 100;
draw_text(x,y-150,string_hash_to_newline(name))
draw_healthbar(x-100, y-100, x+100, y-120, pc, c_black, c_red, c_lime, 0, true, true)
draw_text(x+110,y-120,string_hash_to_newline("HP:"+string(HP)))
draw_text(x+250,y-50,string_hash_to_newline("Stats"))
draw_text(x+200,y-30,string_hash_to_newline("Defence Bonus:"+string(defence_bonus)))
draw_text(x+200,y-10,string_hash_to_newline("Attack Bonus"+string(attack_bonus)))

if global.phase!="defence_curl_opponent"
{
draw_self();
}
if global.phase=="defence_curl_opponent"
{
draw_sprite(spr_defence_curl_squirtle,0,x,y,)
}
}
/*
draw_text(x-420,y-190,"Stats")
draw_text(x-470,y-170,"Defence Bonus:"+string(defence_bonus))
draw_text(x-470,y-150,"Attack Bonus:"+string(attack_bonus))
draw_healthbar(x-80,y-180,x+80,y-200,HP, c_black, c_red, c_lime, 0, true, true);
draw_text(x+90,y-200,"HP:"+string(HP))*/


/* */
/*  */
