alarm_set(0, 2)
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

_rootContainer = Poppet_CreateContainer()
Poppet_WidthSet(_rootContainer, guiWidth)
Poppet_HeightSet(_rootContainer, guiHeight)
Poppet_AnchorSet(_rootContainer, 0,0)
Poppet_PivotSet(_rootContainer, 0,0)

root = Poppet_CreateContainer()
Poppet_WidthSet(root, guiWidth)
Poppet_HeightSet(root, guiHeight)
Poppet_AnchorSet(root, 0,0)
Poppet_PivotSet(root, 0,0)

Poppet_ChildAdd(_rootContainer, root)