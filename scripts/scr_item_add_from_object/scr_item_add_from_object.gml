function scr_item_add_from_object(argument0) {
	var itemname;
	itemname = argument0
	if (global.item1 == 0 || global.item2 == 0 || global.item3 == 0 || global.item4 == 0 || global.item5 == 0 || global.item6 == 0 || global.item7 == 0 || global.item8 == 0)
	{
	    script_execute(scr_item_add, itemname)
	    instance_destroy()
	}



}
