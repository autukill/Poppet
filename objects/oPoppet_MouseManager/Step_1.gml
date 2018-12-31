Poppet_MouseEventReset()

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

var leftState = Poppet_MouseLeftStateGet();
Poppet_MouseEventTypeSet(leftState)

with(GPoppet_Root) Poppet_MouseObject(other.mouseX, other.mouseY)
var target = mouseEventInfo[? "target"]

if mouseObject != target    //鼠标进入,离开
{
	switch leftState
	{
		case ev_no_button:
			with(mouseObject) event_perform(ev_mouse, ev_mouse_leave)
			with(target) event_perform(ev_mouse, ev_mouse_enter)			
			mouseObject = target
		break;
		
		case ev_left_release:
			with(mouseObject) event_perform(ev_mouse, ev_left_release)
			with(mouseObject) event_perform(ev_mouse, ev_mouse_leave)
			with(target) event_perform(ev_mouse, ev_mouse_enter)
			mouseObject = target
		break;
	}
}