function scr_enemy_draw_healthbar() {
	if (global.showhealthbars == 1 && enemyhealth > 0 && (!(place_meeting(x, y, obj_enemy_spared))))
	{
	    if place_meeting(x, y, obj_enemy1_checkup)
	    {
	        draw_sprite(spr_enemy_hp_red, 0, 167, 140)
	        draw_sprite_stretched(spr_healthbar_enemy, 0, 167, 140, round(((48 / maxhealth) * enemyhealth)), 8)
	    }
	    if place_meeting(x, y, obj_enemy2_checkup)
	    {
	        draw_sprite(spr_enemy_hp_red, 0, 167, 156)
	        draw_sprite_stretched(spr_healthbar_enemy, 0, 167, 156, round(((48 / maxhealth) * enemyhealth)), 8)
	    }
	    if place_meeting(x, y, obj_enemy3_checkup)
	    {
	        draw_sprite(spr_enemy_hp_red, 0, 167, 172)
	        draw_sprite_stretched(spr_healthbar_enemy, 0, 167, 172, round(((48 / maxhealth) * enemyhealth)), 8)
	    }
	}
	if (giantdamagebar == 0)
	    script_execute(scr_draw_damage_bar)
	else
	    script_execute(scr_draw_damage_bar_boss)



}
