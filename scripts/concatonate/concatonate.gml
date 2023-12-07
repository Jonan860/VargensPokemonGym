function concatenateAilmentText() {
	for(var i = 0; i < ds_list_size(statusAilmentList); i++) {
		var statusAilment = ds_list_find_value(statusAilmentList, i)
		if(statusAilment.applied and statusAilment.text != "") {
			status_text += statusAilment.text + "/"
		}
	}
	string_delete(status_text, string_length(status_text), 1)
}