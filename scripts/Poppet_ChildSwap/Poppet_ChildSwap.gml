var child = argument[1];
var child2 = argument[2];;

var childIndex = Poppet_ChildIndexGet(argument[0], argument[1])
var child2Index= Poppet_ChildIndexGet(argument[1], argument[2])

var list = argument[0].children;
	list[| childIndex] = child2
	list[| child2Index] = child