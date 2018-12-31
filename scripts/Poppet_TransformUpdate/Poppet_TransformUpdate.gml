/**
 * Updates the values of the object and applies the parent's transform.
 *
 * @param {TransformBase} parentTransform - The transform of the parent of this object
 */
var this = argument0.transform;
var parent = argument1.transform;
var values = argument2;
	
values[0] *= this.scale[0]
values[1] *= this.scale[1]
values[2] += this.rotation

var needUpdateChild = false;
if this.localMatrixDirty
{
	var
		localPosX = parent.size[0] * this.anchor[0] + this.position[0],
		localPosY = parent.size[1] * this.anchor[1] + this.position[1],
		localPivotX = this.size[0] * this.pivot[0],
		localPivotY = this.size[1] * this.pivot[1];
	  
	this.localTransform = Poppet_CreateLocalMatrix(localPosX, localPosY, localPivotX, localPivotY, this.scale[0], this.scale[1], this.rotation, this.skew[0], this.skew[1]);
	this.localMatrixDirty = false;	
	this.worldMatrixDirty = true;
}

if this.worldMatrixDirty
{
	needUpdateChild = true;
	this.worldMatrixDirty = false;	
	this.worldTransform = matrix_multiply(this.localTransform, parent.worldTransform)
		
	/// instance variable for collision and bounds
	this.image_xscale = values[0] / sprite_get_width(this.sprite_index) * this.size[0]; // image_xscale equivalent width
	this.image_yscale = values[1] / sprite_get_height(this.sprite_index) * this.size[1]; // image_yscale equivalent height
	this.image_angle  = values[2];
	this.x = this.worldTransform[12]
	this.y = this.worldTransform[13]
}

if needUpdateChild and argument0.type == GPoppet_Element_Type.Container
{
	var childs = argument0.children;
	var childSize = ds_list_size(childs)
	for(var i = 0; i < childSize; i++)
	{
		childs[| i].transform.localMatrixDirty = true
	}
}
		
return values