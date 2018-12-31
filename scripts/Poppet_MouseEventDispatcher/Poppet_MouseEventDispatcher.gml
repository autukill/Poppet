var event = GPoppet_MouseEvent;
if event[? "cancelBubble"] exit;
event_perform(ev_mouse, event[? "type"])
