// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function switch_saveload()
{
//	if os_type = os_switch
//		switch_save_data_mount(global.NXmainId)
}

function switch_saveloadend()
{
//	if os_type = os_switch
//		switch_save_data_commit()
	ini_close()
//	if os_type = os_switch
//		switch_save_data_unmount()
}

function ossafe_game_end()
{
	game_restart()
}