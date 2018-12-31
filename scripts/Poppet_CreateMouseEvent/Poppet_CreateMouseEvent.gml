var map = ds_map_create()
	// DispalyObject
	map[? "target"] = noone;
	// EventType: Pressed Button Released
	map[? "type"] = noone;
	// 
	map[? "cancelBubble"] = false
	
	ds_map_add_list(map, "eventPath", ds_list_create())

return map;