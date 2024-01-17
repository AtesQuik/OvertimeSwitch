action_create_object(obj_general_variables, 0, 0)
if (instance_number(obj_controller) > 1)
    instance_destroy()
holdesc = 0

left = 0
right = 0
up = 0
down = 0

if os_type = os_switch
global.NXmainId = switch_accounts_open_preselected_user();
depth = -9999
//window_set_size(1280, 720);
//application_surface_enable(true);
//application_surface_draw_enable(false);