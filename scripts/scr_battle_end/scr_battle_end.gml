function scr_battle_end() {
	script_execute(scr_stop_music)
	if instance_exists(obj_sparewave)
	{
	    with (obj_sparewave)
	        instance_destroy()
	}
	instance_create(0, 0, obj_text_box_battle_end)
	if (global.increaselv == 1)
	    script_execute(scr_increase_lv)
	script_execute(scr_loot_get)



}
