function scr_face_protagonist() {
	if instance_exists(obj_protagonist)
	{
	    if (obj_protagonist.prodirection == 0)
	        npcdirection = 2
	    if (obj_protagonist.prodirection == 1)
	        npcdirection = 3
	    if (obj_protagonist.prodirection == 2)
	        npcdirection = 0
	    if (obj_protagonist.prodirection == 3)
	        npcdirection = 1
	}



}
