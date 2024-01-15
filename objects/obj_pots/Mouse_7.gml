if(global.phase == PHASES.inventory) {
	with(obj_pots){selected = 0}
	selected = 1
} else if(room == room_shop) {
	if(global.phase == PHASES.buy) {
		if(struct.price <= global.amber.money) {
			global.shopManager.buyStruct = struct
			global.shopManager.updateShopButtons()
		} else if(struct.price > global.amber.money){global.reinard_rav.cantBuyName = struct.name}
	}
} else if(room == room_inventory) {
	if(global.phase == PHASES.sell) {
		global.shopManager.sellStruct = struct
		scr_goto_room(room_shop)
	}
}


