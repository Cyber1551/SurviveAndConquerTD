///Check to see if mouse is above button

var xhover = (global.gui_mouseX == median(display_get_gui_width()/2-width/2, global.gui_mouseX, display_get_gui_width()/2+width/2));
var yhover = (global.gui_mouseY == median((display_get_gui_height()/2)+50-height/2, global.gui_mouseY, (display_get_gui_height()/2)+50+height/2));

hover = xhover && yhover;

