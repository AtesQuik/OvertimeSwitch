var __b__;
if (global.menuon == 0 || global.battlehappening == 1 || global.transition == 1 || instance_exists(obj_text_box) || instance_exists(obj_save_box) || (!instance_exists(obj_protagonist)))
    instance_destroy()
__b__ = action_if_variable(global.textboxon, 0, 0)
if __b__
{
    if (global.menuon == 1)
    {
        if (item == 0 && stat == 0 && cell == 0)
        {
            if (keyboard_check_pressed(global.downkey) && leftypos < 2)
            {
                audio_play_sound(snd_battlemenu_move, 1, false)
                leftypos += 1
            }
            if (keyboard_check_pressed(global.upkey) && leftypos > 0)
            {
                audio_play_sound(snd_battlemenu_move, 1, false)
                leftypos -= 1
            }
            if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(x, y, obj_wait_for_me)
                if (leftypos == 0)
                    item = 1
                if (leftypos == 1)
                    stat = 1
                if (leftypos == 2)
                    cell = 1
            }
        }
        if (item == 1)
        {
            menutype = 1
            if (itemchosen == 0)
            {
                if (keyboard_check_pressed(global.downkey) && rightypos < 7)
                {
                    rightypos += 1
                    audio_play_sound(snd_battlemenu_move, 1, false)
                }
                if (keyboard_check_pressed(global.upkey) && rightypos > 0)
                {
                    rightypos -= 1
                    audio_play_sound(snd_battlemenu_move, 1, false)
                }
                if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
                {
                    if (rightypos == 0 && global.item1 != 0)
                        itemchosen = 1
                    if (rightypos == 1 && global.item2 != 0)
                        itemchosen = 2
                    if (rightypos == 2 && global.item3 != 0)
                        itemchosen = 3
                    if (rightypos == 3 && global.item4 != 0)
                        itemchosen = 4
                    if (rightypos == 4 && global.item5 != 0)
                        itemchosen = 5
                    if (rightypos == 5 && global.item6 != 0)
                        itemchosen = 6
                    if (rightypos == 6 && global.item7 != 0)
                        itemchosen = 7
                    if (rightypos == 7 && global.item8 != 0)
                        itemchosen = 8
                    if (itemchosen != 0)
                    {
                        audio_play_sound(snd_battlemenu_select, 1, false)
                        instance_create(x, y, obj_wait_for_me)
                        bottomrightpos = 0
                    }
                }
            }
            if (itemchosen != 0)
            {
                if (keyboard_check_pressed(global.rightkey) && bottomrightpos < 2)
                {
                    bottomrightpos += 1
                    audio_play_sound(snd_battlemenu_move, 1, false)
                }
                if (keyboard_check_pressed(global.leftkey) && bottomrightpos > 0)
                {
                    bottomrightpos -= 1
                    audio_play_sound(snd_battlemenu_move, 1, false)
                }
                if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
                {
                    audio_play_sound(snd_battlemenu_select, 1, false)
                    instance_create(x, y, obj_wait_for_me)
                    script_execute(scr_item_actions)
                }
            }
        }
        if (stat == 1)
            menutype = 2
        if (cell == 1)
        {
            script_execute(scr_menuback)
            if (global.phone == 1)
            {
                if (!instance_exists(obj_textbox_item))
                {
                    instance_create(x, y, obj_textbox_item)
                    with (obj_textbox_item)
                    {
                        MAXSTR = 0
                        STR[0] = choose("* You rebel! But you can't#  use it. Stop trying.", "* You wildly call any number.#* ...#* But it refused to work.", "* Hello? Pizza Joe's here.#* What can I do for you?#* A non-working phone? Okay!", "* Nope.", "* You notice a message on the#  phone. It says the phone is#  not working.", "* You call a number. But then#  you realise that you were#  actually just dreaming!", "* You think you're using your#  phone, but then you realise#  it's actually a phony.", "* Why wouldn't you listen to#  Sani?", "* If you keep doing that,#  I will call the cops.#* Oh wait, I can't!")
                    }
                }
            }
            else if (!instance_exists(obj_textbox_item))
            {
                instance_create(x, y, obj_textbox_item)
                with (obj_textbox_item)
                {
                    MAXSTR = 0
                    STR[0] = "* How strange. It seems to be#  missing."
                }
            }
        }
        if keyboard_check_pressed(global.cancelkey)
        {
            if (item == 0 && stat == 0 && cell == 0)
                instance_destroy()
            else
                script_execute(scr_menuback)
        }
    }
    if keyboard_check_pressed(global.menukey)
    {
        if (global.menuon == 1)
            global.menuon = 0
    }
}

