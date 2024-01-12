function draw_background_tiled_horizontal(argument0, argument1, argument2) {
	var back, width, xx, yy, left, right, i;
	back = argument0
	width = background_get_width(back)
	xx = argument1
	yy = argument2
	left = -1
	right = (((__view_get( e__VW.XView, view_current ) / width) + (__view_get( e__VW.WView, view_current ) / width)) + 1)
	if view_enabled
	{
	    for (i = left; i < right; i += 1)
	        draw_background_ext(back, ((xx % width) + (width * i)), yy, 1, 1, 0, image_blend, 1)
	}
	else
	{
	    for (i = -1; i < ((room_width / width) + 1); i += 1)
	        draw_background_ext(back, ((xx % width) + (width * i)), yy, 1, 1, 0, image_blend, 1)
	}



}
