
switch (global.player){
case "ida": {
	if(keyboard_string!="" and string_digits(keyboard_string)==keyboard_string){
	if(real(n)+real(m)=real(string_digits(keyboard_string))){
keyboard_string=""
number_correct_answer+=1
}
else{
keyboard_string=""
number_correct_answer-=1
}
}
n=choose("1","2","3","4","5","6","7","8","9","0")
m=choose("1","2","3","4","5","6","7","8","9","0")
} break;

case "nils":{
if(abs(5-real(n))+abs(5-real(m))==real(keyboard_string)){
global.phase=PHASES.attackHit
keyboard_string=""
instance_destroy()
}
else{
global.phase=PHASES.attackMiss
keyboard_string=""
instance_destroy()
}
} break;

case "jonathan":{
if((10*real(n)+real(m))*(10*real(n)+real(m))==real(keyboard_string)){
global.phase=PHASES.attackHit
keyboard_string=""
instance_destroy()
}
else{
global.phase=PHASES.attackMiss
keyboard_string=""
instance_destroy()
}
} break;
}