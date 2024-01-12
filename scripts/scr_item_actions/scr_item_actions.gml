function scr_item_actions() {
	if (itemchosen != 0)
	{
	    if (itemchosen == 1 && global.item1 != 0)
	        global.selecteditem = global.item1
	    if (itemchosen == 2 && global.item2 != 0)
	        global.selecteditem = global.item2
	    if (itemchosen == 3 && global.item3 != 0)
	        global.selecteditem = global.item3
	    if (itemchosen == 4 && global.item4 != 0)
	        global.selecteditem = global.item4
	    if (itemchosen == 5 && global.item5 != 0)
	        global.selecteditem = global.item5
	    if (itemchosen == 6 && global.item6 != 0)
	        global.selecteditem = global.item6
	    if (itemchosen == 7 && global.item7 != 0)
	        global.selecteditem = global.item7
	    if (itemchosen == 8 && global.item8 != 0)
	        global.selecteditem = global.item8
	    if (global.selecteditem != 0)
	    {
	        if (bottomrightpos == 0)
	            global.itemaction = 1
	        if (bottomrightpos == 1)
	            global.itemaction = 2
	        if (bottomrightpos == 2)
	            global.itemaction = 3
	        script_execute(scr_item_scripts)
	    }
	}



}
