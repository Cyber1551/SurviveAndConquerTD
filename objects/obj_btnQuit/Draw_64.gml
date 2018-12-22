/// @description Insert description here
// You can write your code in this editor

if(hover){
	draw_set_alpha(.2);
}else{
draw_set_alpha(.5);
}

draw_rectangle(display_get_gui_width()/2-width/2, (display_get_gui_height()/2)+100-height/2, display_get_gui_width()/2+width/2, (display_get_gui_height()/2)+100+height/2, false);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_color(display_get_gui_width()/2, (display_get_gui_height()/2)+100, text, c_white, c_white, c_white,c_white,  1);
