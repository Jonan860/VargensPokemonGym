function draw_tail_whip() {
	if active=1{
	draw_text(x-420,y-190,string_hash_to_newline("Stats"))
	draw_text(x-470,y-170,string_hash_to_newline("Defence Bonus:"+string(defence_bonus)))
	draw_text(x-470,y-150,string_hash_to_newline("Attack Bonus:"+string(attack_bonus)))
	draw_self();
	draw_healthbar(x-80,y-180,x+80,y-200,obj_charmander.HP, c_black, c_red, c_lime, 0, true, true);
	draw_text(x+90,y-200,string_hash_to_newline("HP:"+string(obj_charmander.HP)))
	}
}
