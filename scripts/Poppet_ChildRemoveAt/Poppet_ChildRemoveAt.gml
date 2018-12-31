var this = argument[0]
var index = argument[1]
var childList = this.children
var child = Poppet_ChildGetAt(this, index)

child.parent = noone;
// ensure child transform will be recalculated
child.transform._parentID = noone;
ds_list_delete(childList, index)

// ensure bounds will be recalculated
this._boundsID++;

// TODO - lets either do all callbacks or all events.. not both!
//this.onChildrenChange(index);
//child.emit('removed', this);