global.shopManager = id

sellStruct = noone
buyStruct = noone
cantBuyName = noone


clearStructs = function() {
	sellStruct = noone
	buyStruct = noone
	cantBuyName = noone
}



updateShopButtons = function(){
	 with(obj_shop_button){visible = 0}

switch(global.phase){
case PHASES.reinardShop: {
	with(obj_sell_button){visible = 1}
	with(obj_back_button){visible = 1}
	with(obj_buy_button){visible = 1} 
}; break;

case PHASES.buy: 
switch(buyStruct){
	case noone: with(obj_cancel_buy) visible = 1 ; break
	default : {
		with(obj_ja_button) visible = 1
		with(obj_nej_button) visible = 1
	} break;
	}
break;

case PHASES.sell: 
	switch(sellStruct){
		case noone: 
			with(obj_back_button) visible = 1 ; break;
	   default : 
			with(obj_ja_button) visible = 1
			with(obj_nej_button) visible = 1
			break;
break;
}
}
}

updateShopButtons()