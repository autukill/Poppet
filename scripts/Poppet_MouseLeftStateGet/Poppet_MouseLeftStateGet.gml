if device_mouse_check_button_pressed(0, mb_left)
	return ev_left_press
	
if device_mouse_check_button_released(0, mb_left)
	return ev_left_release
	
if device_mouse_check_button(0, mb_left)
	return ev_left_button	

return ev_no_button