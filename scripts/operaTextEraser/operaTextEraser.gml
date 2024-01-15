
function operaTextEraser() {
	keyboard_string = deleteAllSubstrings("!", keyboard_string)
	keyboard_string = deleteAllSubstrings("$", keyboard_string)
	keyboard_string = deleteAllSubstrings("\"", keyboard_string)
	keyboard_string = deleteAllSubstrings("%", keyboard_string)
	keyboard_string = deleteAllSubstrings("€", keyboard_string)
	keyboard_string = deleteAllSubstrings("&", keyboard_string)
	keyboard_string = deleteAllSubstrings("(", keyboard_string)
	keyboard_string = deleteAllSubstrings(")", keyboard_string)
	keyboard_string = deleteAllSubstrings("'", keyboard_string)
}

function deleteAllSubstrings(substring, _string) {
	var i = string_pos(substring, _string)
	while(i > 0) {
		_string = string_delete(_string, i, 1)
		i = string_pos(substring, _string)
	}
	return _string
}