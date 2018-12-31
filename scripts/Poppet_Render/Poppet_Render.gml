/**
 * Renders the object
 */

if !_visible || worldAlpha <= 0 || !renderable
	return;

matrix_set(matrix_world, transform.worldTransform)
event_perform(ev_draw, 0)

if type != GPoppet_Element_Type.Container exit;

var childSize = ds_list_size(children)
for(var i = 0; i < childSize; i++)
{
	var child = children[| i]
	if child._visible with(child) Poppet_Render()
}