var this = argument0, child = argument1;
	
if child.parent 
	Poppet_ChildRemove(child.parent, child)

child.parent = this
ds_list_add(this.children, child)