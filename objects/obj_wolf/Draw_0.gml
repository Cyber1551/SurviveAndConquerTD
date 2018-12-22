/// @description Insert description here
// You can write your code in this editor
draw_self();
if(hlth < 100){
	var h = (hlth/100)*100;
	draw_healthbar(x-40, y-30, x+40, y-45, h, c_black, c_red, c_green, 0, 1, true);
}