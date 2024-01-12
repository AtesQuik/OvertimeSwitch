var __b__;
if (!instance_exists(obj_view_parent))
    instance_create(x, y, obj_view_parent)
if (global.menuon == 1 || global.textboxon == 1 || global.transition == 1 || global.battlehappening == 1)
    script_execute(scr_no_move)
if (!instance_exists(obj_menu))
    global.menuon = 0
if (instance_number(obj_protagonist) > 1)
    instance_destroy()
__b__ = action_if_variable(global.textboxon, 0, 0)
if __b__
{
    __b__ = action_if_variable(global.menuon, 0, 0)
    if __b__
    {
        __b__ = action_if_variable(global.battlehappening, 0, 0)
        if __b__
        {
            __b__ = action_if_variable(global.transition, 0, 0)
            if __b__
            {
                if (keyboard_check(global.downkey) && (!keyboard_check(global.upkey)))
                {
                    if (!(place_meeting(x, (y + spd), obj_solid)))
                    {
                        moving = 1
                        y += spd
                        image_speed = 0.2
                        sprite_index = spr_pro_down
                        prodirection = 0
                    }
                    else if (sprite_index == spr_pro_down)
                        script_execute(scr_no_move)
                    else if ((!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
                    {
                        sprite_index = spr_pro_stand
                        image_speed = 0
                        image_index = 0
                        moving = 0
                        prodirection = 0
                    }
                }
                if (keyboard_check(global.rightkey) && (!keyboard_check(global.leftkey)))
                {
                    if (!(place_meeting((x + spd), y, obj_solid)))
                    {
                        moving = 1
                        x += spd
                        image_speed = 0.2
                        sprite_index = spr_pro_right
                        prodirection = 1
                    }
                    else if (sprite_index == spr_pro_right)
                        script_execute(scr_no_move)
                    else if ((!keyboard_check(global.downkey)) && (!keyboard_check(global.upkey)))
                    {
                        sprite_index = spr_pro_stand
                        image_speed = 0
                        image_index = 1
                        moving = 0
                        prodirection = 1
                    }
                }
                if keyboard_check(global.upkey)
                {
                    if (!(place_meeting(x, (y - spd), obj_solid)))
                    {
                        moving = 1
                        y -= spd
                        image_speed = 0.2
                        sprite_index = spr_pro_up
                        prodirection = 2
                    }
                    else if (sprite_index == spr_pro_up)
                        script_execute(scr_no_move)
                    else if ((!keyboard_check(global.rightkey)) && (!keyboard_check(global.leftkey)))
                    {
                        sprite_index = spr_pro_stand
                        image_speed = 0
                        image_index = 2
                        moving = 0
                        prodirection = 2
                    }
                }
                if keyboard_check(global.leftkey)
                {
                    if (!(place_meeting((x - spd), y, obj_solid)))
                    {
                        moving = 1
                        x -= spd
                        image_speed = 0.2
                        sprite_index = spr_pro_left
                        prodirection = 3
                    }
                    else if (sprite_index == spr_pro_left)
                        script_execute(scr_no_move)
                    else if ((!keyboard_check(global.downkey)) && (!keyboard_check(global.upkey)))
                    {
                        sprite_index = spr_pro_stand
                        image_speed = 0
                        image_index = 3
                        moving = 0
                        prodirection = 3
                    }
                }
                if (keyboard_check_released(global.upkey) && sprite_index == spr_pro_up)
                    script_execute(scr_no_move)
                if (keyboard_check_released(global.rightkey) && sprite_index == spr_pro_right)
                    script_execute(scr_no_move)
                if (keyboard_check_released(global.downkey) && sprite_index == spr_pro_down)
                    script_execute(scr_no_move)
                if (keyboard_check_released(global.leftkey) && sprite_index == spr_pro_left)
                    script_execute(scr_no_move)
                if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_activation_object)) && (!instance_exists(obj_room_fade_out)) && (!instance_exists(obj_room_fade_in)))
                {
                    if (prodirection == 0)
                        instance_create(x, (y + 16), obj_activation_object)
                    if (prodirection == 1)
                        instance_create((x + 10), (y + 8), obj_activation_object)
                    if (prodirection == 2)
                        instance_create(x, (y - 4), obj_activation_object)
                    if (prodirection == 3)
                        instance_create((x - 10), (y + 8), obj_activation_object)
                }
                if (y > (room_height / 2))
                    global.textboxtop = 1
                else if (y <= (room_height / 2))
                    global.textboxtop = 0
                if (global.encountersdisabled == 0)
                {
                    if (moving == 1 && distance_to_object(obj_roomchange) > 32)
                    {
                        global.stepstaken += 1
                        if (global.stepstaken > (global.randomsteps + global.bonussteps))
                        {
                            if (global.randomencounter == global.randomchance)
                                script_execute(scr_random_encounter)
                            else
                                global.randomencounter = irandom(global.randomchance)
                        }
                    }
                }
                if keyboard_check_pressed(global.menukey)
                {
                    if (!instance_exists(obj_menu))
                        instance_create(x, y, obj_menu)
                }
            }
        }
    }
}

