///Initialize the display object
global.displayScale = display_get_gui_width()/view_wview[view_current];

//get mouse position relative to gui
global.gui_mouseX = (mouse_x-view_xview[view_current])*global.displayScale;
global.gui_mouseY = (mouse_y-view_yview[view_current])*global.displayScale;



