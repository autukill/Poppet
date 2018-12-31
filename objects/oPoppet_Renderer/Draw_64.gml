/// 1: Update transform matrix
Poppet_UpdateTransform(root, [1,1, 0, 0,0]);

var worldMatrix = matrix_get(matrix_world);
var worldAlpha = draw_get_alpha();
var worldColor = draw_get_color();

/// 2: Draw with transform matrix
with(root) Poppet_Render()	

matrix_set(matrix_world, worldMatrix);
draw_set_alpha(worldAlpha)
draw_set_color(worldColor)

if GPoppet_Debug_MouseSelect{
	var mouseObject = GPoppet_MouseManager.mouseObject;
	if mouseObject > 0 {
		var tr = mouseObject.transform;	
		draw_set_color(c_red)
		draw_rectangle(tr.bbox_left, tr.bbox_top, tr.bbox_right, tr.bbox_bottom, true)
		draw_text(tr.bbox_left-1, tr.bbox_top-1, string(mouseObject) + " " +string(device_mouse_x_to_gui(0)) + "," + string(device_mouse_y_to_gui(0)))	
		draw_text(tr.bbox_left+1, tr.bbox_top+1, string(mouseObject) + " " +string(device_mouse_x_to_gui(0)) + "," + string(device_mouse_y_to_gui(0)))	
		draw_set_color(c_white)
		draw_text(tr.bbox_left, tr.bbox_top, string(mouseObject) + " " +string(device_mouse_x_to_gui(0)) + "," + string(device_mouse_y_to_gui(0)))	
	}
}

draw_text(32, 132, "FPS = " + string(fps_real));
draw_text(40,220, string(GPoppet_MouseEvent[? "type"]) + " , "  + string(GPoppet_MouseEvent[? "target"]) + " : " + string(oPoppet_MouseManager.mouseObject))