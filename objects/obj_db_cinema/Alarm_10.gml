progress = 44
obj_db_disp5.sprite_index = spr_dispenser_talk
obj_db_disp5.image_speed = 0.1
with (instance_create(x, y, obj_text_box))
{
    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    MAXSTR = 4
    STR[0] = "* AND NOW..."
    STR[1] = "* HERE COMES THE ROMANTIC#  SCENE AT THE END OF#  THE MOVIE..."
    STR[2] = "* WE BOTH LEAN IN#  FOR THE KISS..."
    STR[3] = "* AND..."
    STR[4] = "* THEN..."
}

