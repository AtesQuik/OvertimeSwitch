function scr_inventory_check() {
	if (global.item1 != 0 && global.item2 != 0 && global.item3 != 0 && global.item4 != 0 && global.item5 != 0 && global.item6 != 0 && global.item7 != 0 && global.item8 != 0)
	    global.inventoryfull = 1
	else
	    global.inventoryfull = 0
	if (global.itemamount > 8)
	    global.itemamount = 8



}
