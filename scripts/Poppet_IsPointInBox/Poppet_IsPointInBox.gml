var mouseX = argument0;
var mouseY = argument1;
var transform = argument2.transform;

if mouseY >= transform.bbox_top and mouseY <= transform.bbox_bottom and 
	mouseX >= transform.bbox_left and mouseX <= transform.bbox_right 
	return true
	
return false