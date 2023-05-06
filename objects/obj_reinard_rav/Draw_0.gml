
draw_self();

if(room != room_skalman){
switch(global.phase){
	
case PHASES.sell:
	switch(global.shopManager.sellStruct) {
	case noone: var txt = "Vad vill du salja?"; break;
	default: var txt = "Vill du salja "+global.shopManager.sellStruct.name+"\n for"+string(floor(global.shopManager.sellStruct.price/2))+" riksdaler"+"?"
	}; break;

case PHASES.buy:
 switch(global.shopManager.buyStruct){
	
case noone: switch(global.shopManager.cantBuyName){
	case noone: var txt = "Vad vill du kopa?"; break;
	default : var txt = "Du har inte rad att kopa "+global.shopManager.cantBuyName; break;
	}; break;
	default : var txt = "Vill du kopa "+global.shopManager.buyStruct.name+"\n for"+string(floor(global.shopManager.buyStruct.price))+" riksdaler"+"?"
 }; break;
case PHASES.reinardShop:
var txt = "Valkommen, vad vill du gora?"; break;
}
if(scrContains(global.phase, PHASES.sell, PHASES.buy, PHASES.reinardShop)){
drawSpeechBubble(x-328,y,txt)
}
}

if(room=room_shop){draw_text_color(0,y+300,"Pengar="+string(global.amber.money),c_green,c_green,c_black,c_green,1)}