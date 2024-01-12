progress = 5
with (obj_db_disp5)
{
    sprite_index = spr_dispenser_talk
    image_speed = 0.2
}
with (instance_create(x, y, obj_text_box))
{
    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    MAXSTR = 5
    STR[0] = "* THIS IS OUR MOVIE, AND WE#  ARE THE PROTAGONISTS!"
    STR[1] = "* LET ME SET THE SCENE!"
    STR[2] = "* *AHEM*"
    STR[3] = "* IT IS LATE AT NIGHT,#  LOCAL BASEBALL PLAYER#  DISPENSER (THAT'S ME!) AND"
    STR[4] = "* HIS *AHEM* GIRLFRIEND,#  THE AWARD-WINNING CHEER-#  LEADER ARE ON A DATE."
    STR[5] = "* THEY WERE JUST DRIVING#  THROUGH THE FOREST, WHEN#  ALL OF THE SUDDEN..."
}

