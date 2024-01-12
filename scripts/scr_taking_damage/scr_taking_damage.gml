function scr_taking_damage() {
	if (place_meeting(x, y, obj_damaging_enemy) && enemyhurt == 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
	{
	    with (obj_damaging_enemy)
	        instance_destroy()
	    script_execute(scr_damage_numbers)
	    if (global.enemydamage > 0)
	    {
	        audio_play_sound(snd_enemy_hurt, 1, false)
	        enemyhurt = 1
	        alarm[0] = 30
	        if (!(place_meeting(x, y, obj_enemy_spareable)))
	            enemyhealth -= global.enemydamage
	        else
	        {
	            global.enemydamage = global.betrayaldamage
	            enemyhealth = 0
	        }
	    }
	}



}
