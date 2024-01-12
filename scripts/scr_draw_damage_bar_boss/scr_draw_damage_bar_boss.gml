function scr_draw_damage_bar_boss() {
	if (enemyhurt == 1 && enemydead == 0)
	{
	    draw_sprite(spr_damage_bar_boss, 1, 82, 30)
	    draw_sprite_stretched(spr_damage_bar_boss, 2, 82, 30, round(((153 / maxhealth) * enemyhealth)), 9)
	    draw_sprite(spr_damage_bar_boss, 0, 82, 30)
	}



}
