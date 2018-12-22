/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_alpha(0.8);
draw_set_color(c_dkgray);

var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);

draw_rectangle(xx, yy, xx+room_width, yy+64, false);
draw_set_alpha(1);
draw_set_color(c_white);

for(var i = 0; i < 10; i++){
draw_sprite(spr_slot, 0, xx+(64*(i))+32,yy+32);

if(inv[i] != -1){
//show_message(inv[i]);
draw_sprite(tiles, inv[i], xx+(64*(i))+16, yy+16);
/*var str = object_get_name(inv[i]);

//show_message(str);
switch(str){
	case "obj_tile_stone":
		draw_sprite(tiles, 1, xx+(64*(i))+16, yy+16);
	break;
	case "obj_tile_coal":
		draw_sprite(tiles, 2, xx+(64*(i))+16, yy+16);
	break;
	case "obj_tile_copper":
		draw_sprite(tiles, 3, xx+(64*(i))+16, yy+16);
	break;
	case "obj_tile_iron":
		draw_sprite(tiles, 4, xx+(64*(i))+16, yy+16);
	break;
	case "obj_tooth":
		draw_sprite(spr_tooth, 0, xx+(64*(i))+32, yy+32);
	break;
	case "obj_beef":
		draw_sprite(spr_beef, 0, xx+(64*(i))+32, yy+32);
	break;
	case "obj_rapier":
		draw_sprite(spr_rapier, 0, xx+(64*(i))+24, yy+34);
	break;
	case "obj_tile_tree":
		draw_sprite(tiles, 6, xx+(64*(i))+16, yy+16);
	break;
	case "obj_wood":
		draw_sprite(tiles, 6, xx+(64*(i))+16, yy+16);
	break;
	case "obj_stick":
		draw_sprite(tiles, 7, xx+(64*(i))+16, yy+16);
	break;
}*/

}
draw_sprite(spr_slot, 1, xx+(64*(sel))+32, yy+32);
//draw_text(xx+(64*(i))+32, yy+32, string(inv[i]));
draw_text(xx+(64*(i))+40, yy+40, string(inv_num[i]));
}
var h = (global.hlth/global.maxHlth)*100;
var hr = (global.hunger/global.maxHunger)*100;
var t = (global.thirst/global.maxThirst)*100;

draw_healthbar(xx+650, yy+5, xx+view_wview[0]-5, yy+21, h, c_black, make_color_rgb(204, 0, 0), make_color_rgb(255, 0, 0), 0, 1, true);
//draw_healthbar(xx+650, yy+24, xx+view_wview[0]-200, yy+32, hr, c_black, make_color_rgb(0, 204, 0), make_color_rgb(0, 255, 0), 0, 1, true);
//draw_healthbar(xx+view_wview[0]-200, yy+24, xx+view_wview[0]-5, yy+32, t, c_black, make_color_rgb(0, 0, 204), make_color_rgb(0, 0, 255), 1, 1, true);