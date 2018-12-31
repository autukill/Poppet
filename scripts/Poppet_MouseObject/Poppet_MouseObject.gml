var 
	this = id,
	transform = this.transform,
	mouseX = argument0,
	mouseY = argument1;

if !Poppet_IsPointInBox(mouseX, mouseY, this)
	return noone

if transform.preciseClick and !collision_point(mouseX, mouseY, transform, true, true)
	return noone
	
// 叶子节点
if this.type != GPoppet_Element_Type.Container 
	return Poppet_MouseEventCaptureObject(this)
		
var childSize = ds_list_size(this.children);
for(var i = 0; i < childSize; i++)
{
	var child = this.children[| i]
	if child._visible 
	{
		with child 
		{
			if Poppet_MouseObject(mouseX, mouseY) 
			{
				// 冒泡
				Poppet_MouseEventDispatcher()
				Poppet_MouseEventPathAdd(child)
				return child
			}
		}
	}	
}
	
// 叶子节点
return Poppet_MouseEventCaptureObject(this)
