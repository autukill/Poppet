// Instace
globalvar 
	GPoppet_Renderer,  
	GPoppet_Root,
	GPoppet_MouseManager,
	GPoppet_MouseEvent,
	;

GPoppet_Renderer = instance_create_depth(0, 0, 0, oPoppet_Renderer)
GPoppet_Root = GPoppet_Renderer.root;
GPoppet_MouseManager = instance_create_depth(0,0,0, oPoppet_MouseManager)
GPoppet_MouseEvent = GPoppet_MouseManager.mouseEventInfo
// Debug
globalvar GPoppet_Debug_MouseSelect;
GPoppet_Debug_MouseSelect = true;