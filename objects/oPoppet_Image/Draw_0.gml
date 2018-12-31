draw_set_color(c_white)
draw_set_alpha(worldAlpha)
switch scaleMode
{
	case GPoppet_Image_ScaleMode.None:			
		draw_sprite(sprite_index, -1, 0, 0)
	break;
	
	case GPoppet_Image_ScaleMode.Scale9Grid:
		Poppet_ImageDraw9Grid(sprite_index, 0, 0, transform.size[0], transform.size[1], scale9GridRect, scale9GridTilingStatus);		
	break;
	
	case GPoppet_Image_ScaleMode.Stretched:
		draw_sprite_stretched(sprite_index, -1, 0, 0, transform.size[0], transform.size[1]);
	break;
	
	case GPoppet_Image_ScaleMode.Tiled:
		Poppet_ImageDrawTiledArea(sprite_index, -1, 0, 0, 0,0, transform.size[0], transform.size[1]);
	break;
}