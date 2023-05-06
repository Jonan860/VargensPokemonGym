function scr_reset_attributes() {
	with(obj_pokemon){
	action_bar=max_action_bar
	defence_bonus=0
	attack_bonus=0
	accuracy_bonus=0
	for(var i=0;i<ds_list_size(statusAilmentList);i++){
	var Ailment=ds_list_find_value(statusAilmentList,i)
	Ailment.scrReset()
	}

for(var i=0;i<ds_list_size(movesList);i++){
var move=ds_list_find_value(movesList,i)
move.pp=move.ppMax
}
	}}