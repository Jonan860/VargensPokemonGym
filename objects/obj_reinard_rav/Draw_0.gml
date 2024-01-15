
draw_self();
scrSetContrastingTextColor()
if(room != room_skalman) {
	switch(global.phase) {
		case PHASES.sell :
			 var txt = global.shopManager.sellStruct == noone ? "Vad vill du salja?" : "Vill du salja " + global.shopManager.sellStruct.name + "\n for" + string(floor(global.shopManager.sellStruct.price / 2)) + " riksdaler" + "?"; break;
		case PHASES.buy:
			 if(global.shopManager.buyStruct == noone) {
				var txt = global.shopManager.cantBuyName == noone ? "Vad vill du kopa?" : "Du har inte rad att kopa " + global.shopManager.cantBuyName; break;
			 } else {
				 var txt = "Vill du kopa " + global.shopManager.buyStruct.name + "\n for " + string(floor(global.shopManager.buyStruct.price)) + " riksdaler" + "?"
			 }; break;
		case PHASES.reinardShop:
			var txt = "Valkommen, vad vill du gora?"; break;
	}
	if(scrContains(global.phase, PHASES.sell, PHASES.buy, PHASES.reinardShop)) {
		drawSpeechBubble(x - 328, y, txt)
	}
}

if(room == room_shop) {
	draw_text_color(0, y + 300, "Pengar = " + string(global.amber.money), c_green, c_green, c_black, c_green, 1)
	draw_set_color(c_green)
}