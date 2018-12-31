/// @function Poppet_Draw9Grid(sprite, x, y, w, h, scale9GridRect, scale9GridTilingStatus)
var texture = sprite_get_texture(argument0, -1),
	textureWidth = sprite_get_width(argument0),
	textureHeight = sprite_get_height(argument0);

var width = argument3,
	height = argument4,
	scaleRect = argument5;

var tiling = argument6;

var	tx2 = scaleRect[0] / textureWidth,
	tx3 = (scaleRect[0] + scaleRect[2]) / textureWidth,
	
	ty2 = scaleRect[1] / textureHeight,
	ty3 = (scaleRect[1] + scaleRect[3]) / textureHeight;
	
var x1 = argument1,
	x2 = x1 + scaleRect[0],
	x3 = x1 + width - (textureWidth* (1-tx3)),
	x4 = x1 + width,
	
	y1 = argument2,
	y2 = y1 + scaleRect[1],
	y3 = y1 + height - (textureHeight * (1- ty3)),
	y4 = y1 + height;

draw_primitive_begin_texture(pr_trianglestrip, texture)

draw_vertex_texture(x1,y1, 0 ,  0)
draw_vertex_texture(x1,y2, 0 , ty2)
draw_vertex_texture(x2,y1, tx2,  0)
draw_vertex_texture(x2,y2, tx2, ty2)
draw_vertex_texture(x3,y1, tx3,  0)
draw_vertex_texture(x3,y2, tx3, ty2)
draw_vertex_texture(x4,y1, 1, 0)
draw_vertex_texture(x4,y2, 1, ty2)

draw_vertex_texture(x4, y3, 1, ty3)
draw_vertex_texture(x3, y2, tx3, ty2);
draw_vertex_texture(x3, y3, tx3, ty3);
draw_vertex_texture(x2, y2, tx2, ty2);
draw_vertex_texture(x2, y3, tx2, ty3);
draw_vertex_texture(x1, y2, 0, ty2);
draw_vertex_texture(x1, y3, 0, ty3);

draw_vertex_texture(x1, y4, 0, 1);
draw_vertex_texture(x2, y3, tx2, ty3);
draw_vertex_texture(x2, y4, tx2, 1);
draw_vertex_texture(x3, y3, tx3, ty3);
draw_vertex_texture(x3, y4, tx3, 1);
draw_vertex_texture(x4, y3, 1, ty3);
draw_vertex_texture(x4, y4, 1, 1);

draw_primitive_end()