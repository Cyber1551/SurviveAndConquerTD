
// You can write your code in this editor
#macro CELL_WIDTH 32
#macro CELL_HEIGHT 32
#macro FLOOR -5
#macro WALL -6
#macro VOID -7



///Create the Leve

room_width = (CELL_WIDTH/16)*720;
room_height = (CELL_HEIGHT/16)*720;


var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;

grid = ds_grid_create(width, height);

//Fill grid with void

ds_grid_set_region(grid, 0, 0, width-1, height-1, VOID);

//Randomize
randomize();


var cx = width div 2;
var cy = height div 2;




instance_create_layer(cx*CELL_WIDTH, cy*CELL_HEIGHT, "Instances", obj_player);

var cdir = irandom(3);

var odds = 1;

repeat(1000){
	grid[# cx, cy] = FLOOR;
	if(irandom(odds) == odds){
		cdir = irandom(3);
	}
	//Move the controller
	var xdir = lengthdir_x(1, cdir*90);
	var ydir = lengthdir_y(1, cdir*90);
	
	cx+=xdir;
	cy+=ydir;
	
	//Boundaries
	cx = clamp(cx, 1, width-2);
	cy = clamp(cy, 1, height-2);
}


for(var yy=1; yy< height-1;yy++){
	for(var xx =1;xx< width-1;xx++){
		if(grid[# xx, yy] == FLOOR){
			if(grid[# xx+1, yy] != FLOOR) grid[# xx+1, yy] = WALL;
			if(grid[# xx-1, yy] != FLOOR) grid[# xx-1, yy] = WALL;
			if(grid[# xx, yy+1] != FLOOR) grid[# xx, yy+1] = WALL;
			if(grid[# xx, yy-1] != FLOOR) grid[# xx, yy-1] = WALL;
		}
	}
}

for(var yy = 0; yy < height; yy++){
	for(var xx = 0; xx < width; xx++){
		if(grid[# xx, yy] == FLOOR){
			//Draw floor
			tilemap_set_at_pixel(global.tm, 1, xx*CELL_WIDTH, yy*CELL_HEIGHT);
		}else if(grid[# xx, yy] == WALL){
			tilemap_set_at_pixel(global.tm, 2, xx*CELL_WIDTH, yy*CELL_HEIGHT);

		}
	}
}	


var tw = CELL_WIDTH/2;
var th = CELL_HEIGHT/2;

for(var yy = 0; yy < height*2;yy++){
	for(xx = 0; xx< width*2; xx++){
		if(grid[# xx div 2, yy div 2] == FLOOR){
			var tx = xx* tw;
			var ty = yy*th;
			
			var right = grid[# (xx+1) div 2, yy div 2] != FLOOR;
			var left = grid[# (xx-1) div 2, yy div 2] != FLOOR;
			var top = grid[# xx div 2, (yy-1) div 2] != FLOOR;
			var bottom = grid[# xx div 2, (yy+1) div 2] != FLOOR;
			
			var top_right = grid[# (xx+1) div 2, (yy-1) div 2] != FLOOR;
			var top_left = grid[# (xx-1) div 2, (yy-1) div 2] != FLOOR;
			var bottom_right= grid[# (xx+1) div 2, (yy+1) div 2] != FLOOR;
			var bottom_left = grid[# (xx-1) div 2, (yy+1) div 2] != FLOOR;
			
			
			
			
		}
	}
}