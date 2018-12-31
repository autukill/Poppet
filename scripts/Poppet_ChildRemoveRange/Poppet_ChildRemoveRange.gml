var this = argument[0]
var childList = this.children
var beginIndex = argument[1]
var endIndex = argument[2]
var removed = [];
var removedIndex = 0
for(var i = beginIndex; i <= endIndex; i++)
{
	var child = childList[| i]
	removed[removedIndex] = child	
	removedIndex++
}

for(var j = endIndex; j >= endIndex; j--)
	Poppet_ChildRemoveAt(this, j)

return removed