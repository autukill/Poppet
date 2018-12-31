/// Poppet_PreciseClickEnable(displayobject, sprite_index)
var transform = argument[0].transform,
	
if (argument_count > 1) 
{
	var sprId = argument[1]
	if (sprite_exists(sprId) and sprId != transform.sprite_index)
	{		
		var 
			width = transform.sprite_width,
			height = transform.sprite_height,
			sWidth = sprite_get_width(sprId ),
			sHeight = sprite_get_height(sprId);

		transform.sprite_index = sprId 
		transform.image_xscale = sWidth / width
		transform.image_yscale = sHeight / height	
	}
}

transform.preciseClick = true