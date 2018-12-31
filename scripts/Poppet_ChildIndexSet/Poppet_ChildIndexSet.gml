/// @function Poppet_ChildIndexSet(Container, child, pos)
/// @param {real} container
/// @param {real} display object
/// @param {real} position
var this = argument[0]
var childList = this.children
var child = argument[1]
var oldIndex = Poppet_ChildIndexGet(this, child)

ds_list_delete(childList, oldIndex)
childList[| argument[2]] = child

