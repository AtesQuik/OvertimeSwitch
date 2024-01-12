function scr_draw_damage_bar() {
	if (enemyhurt == 1 && enemydead == 0)
	{
	    draw_sprite(spr_damage_bar, 1, (x - 24), 30)
	    draw_sprite_stretched(spr_damage_bar, 2, (x - 24), 30, round(((51 / maxhealth) * enemyhealth)), 9)
	    draw_sprite(spr_damage_bar, 0, (x - 24), 30)
	}



}
