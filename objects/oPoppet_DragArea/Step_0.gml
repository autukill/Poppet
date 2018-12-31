// Inherit the parent event
if (onDrag) {	
	var mouseManager = GPoppet_MouseManager;
	var location = Poppet_GlobalToLocal(transform.worldTransform, mouseManager.mouseX, mouseManager.mouseY)

	var offsetX = location[@ 0] - pressX,
		offsetY = location[@ 1] - pressY;
		
	if(abs(offsetX) >= 1 ){
		Poppet_XAdd(id, round(offsetX))
	}
 
	if(abs(offsetY) >= 1){
		Poppet_YAdd(id, round(offsetY))
	}
}