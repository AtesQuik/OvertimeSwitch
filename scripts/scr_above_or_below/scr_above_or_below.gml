function scr_above_or_below(argument0) {
	var depthbefore;
	depthbefore = argument0
	if instance_exists(obj_protagonist)
	{
	    if (obj_protagonist.y < y)
	        depth = (obj_protagonist.depth - 1)
	    else
	        depth = depthbefore
	}



}
