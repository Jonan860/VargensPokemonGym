// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrContains(){
for (var i = 1; i < argument_count; i++) {
if (argument[0] == argument[i]) return true;
}
return false;
}
