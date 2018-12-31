var this = argument0;
var values = argument1;

values = Poppet_TransformUpdate(this, this.parent, values);
	
this.worldAlpha = this.alpha * this.parent.worldAlpha

if this.type != GPoppet_Element_Type.Container exit;
var childSize = ds_list_size(this.children)
for(var i = 0; i < childSize; i++)
{
	var child = this.children[| i]
	if child._visible Poppet_UpdateTransform(child, values)	
}