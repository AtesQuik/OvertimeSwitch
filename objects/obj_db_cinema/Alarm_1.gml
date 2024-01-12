progress = 3
with (instance_create(x, y, obj_music_player))
    musictrack = 146
with (obj_db_disp5)
{
    sprite_index = spr_dispenser_talk
    image_speed = 0.2
}
with (instance_create(x, y, obj_text_box))
{
    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    MAXSTR = 10
    STR[0] = "* MY SUNSHINE!"
    STR[1] = "* I RENTED A BOOK ABOUT#  DATING FROM THE LOCAL#  LIBRARBY."
    STR[2] = "* IT STATES THAT IT IS VERY#  ROMANTIC TO GO WATCH A#  MOVIE AFTER DINNER."
    STR[3] = "* SADLY, THERE ARE NO CINEMAS#  AROUND HERE IN DUSTBOWL."
    STR[4] = "* AND NO MOVIES, EXCEPT FOR#  WEAPON DEMONSTRATIONS."
    STR[5] = "* AND BECAUSE OF THAT,#  I DECIDED THAT WE WOULD..."
    STR[6] = "* STAR IN OUR OWN MOVIE!"
    STR[7] = "* OH YES! YOU HEARD ME#  RIGHT, DARLING!"
    STR[8] = "* LIGHTS!"
    STR[9] = "* CAMERA!"
    STR[10] = "* ACTION!"
}

