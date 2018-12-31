var this = argument0,
	child = argument1,
	pos = argument2;
	
if(child.parent)
	Poppet_ChildRemove(child.parent, child)

child.parent = this

// ensure child transform will be recalculated
child.transform._parentID = -1

ds_list_insert(this.children, pos, child)

// ensure bounds will be recalculated
this._boundsID++ ;