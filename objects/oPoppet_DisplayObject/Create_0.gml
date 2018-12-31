type = GPoppet_Element_Type.DisplayObject

transform = Poppet_TransformCreate()

/**
* The opacity of the object.
*/

alpha = 1

/**
* The visibility of the object. If false the object will not be drawn, and
* the updateTransform function will not be called.
*
* Only affects recursive calls from parent. You can ask for bounds or call updateTransform manually
*/

_visible = true

 /**
* Can this object be rendered, if false the object will not be drawn but the updateTransform
* methods will still be called.
*
* Only affects recursive calls from parent. You can ask for bounds manually
*/

renderable = true

/**
* The display object container that contains this display object.
*/

parent = noone

/**
* The multiplied alpha of the displayObject
*/

worldAlpha = 1

/**
* The area the filter is applied to. This is used as more of an optimisation
* rather than figuring out the dimensions of the displayObject each frame you can set this rectangle
*/

filterArea = noone

_filters = noone
_enabledFilters = noone

/**
* The bounds object, this is used to calculate and store the bounds of the displayObject
*/
//_bounds = new Bounds();
_boundsID = 0;
_lastBoundsID = -1;
//_boundsRect = null;
//_localBoundsRect = null;


_mask = noone;