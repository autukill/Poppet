var this = argument[0]
var childList = this.children
var child = argument[1]
var index = Poppet_ChildIndexGet(this, argument[1])
if (index == -1) return null;

child.parent = noone;
// ensure child transform will be recalculated
child.transform._parentID = noone;
ds_list_delete(childList, index)

// ensure bounds will be recalculated
this._boundsID++;

// TODO - lets either do all callbacks or all events.. not both!
//this.onChildrenChange(index);
//child.emit('removed', this);