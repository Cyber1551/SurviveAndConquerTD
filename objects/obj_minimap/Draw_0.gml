/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_dkgray);
draw_set_alpha(.5);
draw_rectangle(xp, yp, xp+width, yp+height, false);

draw_set_color(c_black);
draw_set_alpha(.8);

var coalCount = instance_number(obj_tile_coal);
for(var c = 0; c<coalCount;c++){
	coalId = instance_find(obj_tile_coal, c);
	var wherex = xp+coalId.x*xscale;
	var wherey = yp+coalId.y*yscale;
	
	draw_rectangle(wherex, wherey, wherex+(32*xscale), wherey+(32*yscale), false);
}
draw_set_color(c_gray);
var stoneCount = instance_number(obj_tile_stone);
for(var c = 0; c<stoneCount;c++){
	stoneId = instance_find(obj_tile_stone, c);
	var wherex = xp+stoneId.x*xscale;
	var wherey = yp+stoneId.y*yscale;
	
	draw_rectangle(wherex, wherey, wherex+(32*xscale), wherey+(32*yscale), false);
}
draw_set_color(c_orange);
var copperCount = instance_number(obj_tile_copper);
for(var c = 0; c<copperCount;c++){
	copperId = instance_find(obj_tile_copper, c);
	var wherex = xp+copperId.x*xscale;
	var wherey = yp+copperId.y*yscale;
	
	draw_rectangle(wherex, wherey, wherex+(32*xscale), wherey+(32*yscale), false);
}
draw_set_color(c_ltgray);
var ironCount = instance_number(obj_tile_iron);
for(var c = 0; c<ironCount;c++){
	ironId = instance_find(obj_tile_iron, c);
	var wherex = xp+ironId.x*xscale;
	var wherey = yp+ironId.y*yscale;
	
	draw_rectangle(wherex, wherey, wherex+(32*xscale), wherey+(32*yscale), false);
}
draw_set_color(c_blue);
var waterCount = instance_number(obj_tile_water);
for(var c = 0; c<waterCount;c++){
	waterId = instance_find(obj_tile_water, c);
	var wherex = xp+waterId.x*xscale;
	var wherey = yp+waterId.y*yscale;
	
	draw_rectangle(wherex, wherey, wherex+(32*xscale), wherey+(32*yscale), false);
}
draw_set_color(make_color_rgb(102, 255, 153));
var treeCount = instance_number(obj_tile_tree);
for(var c = 0; c<treeCount;c++){
	treeId = instance_find(obj_tile_tree, c);
	var wherex = xp+treeId.x*xscale;
	var wherey = yp+treeId.y*yscale;
	
	draw_rectangle(wherex, wherey, wherex+(32*xscale), wherey+(32*yscale), false);
}


draw_set_color(c_yellow);
playerId = instance_find(obj_player, 0);
	var wherex = xp+playerId.x*xscale;
	var wherey = yp+playerId.y*yscale;
	
	draw_circle(wherex, wherey,2, false);