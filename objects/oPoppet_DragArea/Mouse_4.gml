// Inherit the parent event
event_inherited();

onDrag = true

var mouseManager = GPoppet_MouseManager;
var location = Poppet_GlobalToLocal(transform.worldTransform, mouseManager.mouseX, mouseManager.mouseY)

pressX = round(location[@ 0]);
pressY = round(location[@ 1]);