/// Detection Window Size Change
alarm_set(0, 1)

if application_surface_is_enabled() exit;
	
var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();

if (_guiWidth != guiWidth) or (_guiHeight != guiHeight)  {
	display_set_gui_size(-1, -1);
	Poppet_WidthSet(_rootContainer, _guiWidth)
	Poppet_HeightSet(_rootContainer, _guiHeight)
	Poppet_WidthSet(root, _guiWidth)
	Poppet_HeightSet(root, _guiHeight)

	guiWidth = _guiWidth
	guiHeight = _guiHeight
}