if(visible) {
	switch(global.phase) {
		case PHASES.sell :
			with(global.shopManager.sellStruct) {
				count -= 1;
				global.amber.money += floor(price / 2);
			}
			global.phase=PHASES.reinardShop
			global.shopManager.updateShopButtons()

			with(obj_pots){visible = 1}
	
			global.shopManager.clearStructs()
			break;

		case PHASES.buy :
			with(global.shopManager.buyStruct) {
				count += 1; 
				global.amber.money -= price;
			}
			global.shopManager.clearStructs()
			global.phase = PHASES.reinardShop
			global.shopManager.updateShopButtons()
			break;
	}
}