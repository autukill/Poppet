/// Poppet_PreciseClickDisable(transform)
var 
	transform = argument0.transform,
	width = transform.sprite_width,
	height = transform.sprite_height		

transform.sprite_index = sPoppet_Point
transform.image_xscale = width
transform.image_yscale = height	

transform.preciseClick = false