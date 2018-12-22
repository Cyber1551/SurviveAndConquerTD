/// @description Insert description here
// You can write your code in this editor
crafting = false
scr_init_craft();
depth = -200;
var xpos = camera_get_view_x(view_camera[0]);
var ypos = camera_get_view_y(view_camera[0]);

var mx = mouse_x-camera_get_view_x(view_camera[0]);
var my = mouse_y-camera_get_view_y(view_camera[0]);