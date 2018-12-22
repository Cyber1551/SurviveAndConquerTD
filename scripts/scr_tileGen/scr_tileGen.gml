randomize();
var i;
var ii;
var currentX;

for(i = 0; i<global.tileWidth; i++){
		instance_create_layer(i*global.tileSize, 0, "Instances", obj_tile_grass);
	currentX = i*global.tileSize;
	for(ii = 0; ii < global.tileHeigth; ii++){
		 instance_create_layer(currentX, ii*global.tileSize, "Instances", obj_tile_grass);
		 currentY = ii*global.tileSize;
		 
	}
}
//Ore spawn

//Trees
var rr = irandom_range(10, 20);
for(var ii = 0; ii < rr; ii++){
spawnRegionX = (random((global.tileSize)+(room_width-2*global.tileSize)));
spawnRegionY = (random((global.tileSize)+(room_height-2*global.tileSize)));

instance_create_layer(spawnRegionX, spawnRegionY,"Instances", obj_tile_tree);
with(obj_tile_stone){
	move_snap(global.tileSize, global.tileSize);
}


}



//Stone
spawnRegionX = (random((global.tileSize)+(room_width-2*global.tileSize)));
spawnRegionY = (random((global.tileSize)+(room_height-2*global.tileSize)));

instance_create_layer(spawnRegionX, spawnRegionY,"Instances", obj_tile_stone);
with(obj_tile_stone){
	move_snap(global.tileSize, global.tileSize);
}

//Coal
spawnRegionX = (random((global.tileSize)+(room_width-2*global.tileSize)));
spawnRegionY = (random((global.tileSize)+(room_height-2*global.tileSize)));

instance_create_layer(spawnRegionX, spawnRegionY, "Instances",obj_tile_coal);
with(obj_tile_coal){
	move_snap(global.tileSize, global.tileSize);
}

//Copper
spawnRegionX = (random((global.tileSize)+(room_width-2*global.tileSize)));
spawnRegionY = (random((global.tileSize)+(room_height-2*global.tileSize)));

instance_create_layer(spawnRegionX, spawnRegionY,"Instances", obj_tile_copper);
with(obj_tile_copper){
	move_snap(global.tileSize, global.tileSize);
}

//Iron
spawnRegionX = (random((global.tileSize)+(room_width-2*global.tileSize)));
spawnRegionY = (random((global.tileSize)+(room_height-2*global.tileSize)));

instance_create_layer(spawnRegionX, spawnRegionY, "Instances",obj_tile_iron);
with(obj_tile_iron){
	move_snap(global.tileSize, global.tileSize);
}

//Water
spawnRegionX = (random((global.tileSize)+(room_width-2*global.tileSize)));
spawnRegionY = (random((global.tileSize)+(room_height-2*global.tileSize)));

instance_create_layer(spawnRegionX, spawnRegionY, "Instances",obj_tile_water);
with(obj_tile_water){
	move_snap(global.tileSize, global.tileSize);
}


//ORE CLUSTERS

//STONE

with(obj_tile_stone){
	tile = global.tileSize;
	var i;
	for(i = 0; i<10;i++){
		//brush size;
		
		//Center
		instance_create_layer(x, y, "Instances", obj_tile_stone);
		//Right
		if(x+tile < room_width-tile){
			instance_create_layer(x+tile, y, "Instances", obj_tile_stone);
		}
		//Down
		if(y+tile < room_height-tile){
			instance_create_layer(x, y+tile, "Instances", obj_tile_stone);
		}
		//Left
		if(x-tile > tile){
			instance_create_layer(x-tile, y, "Instances", obj_tile_stone);
		}
		//Up
		if(y-tile > tile){
			instance_create_layer(x, y-tile, "Instances", obj_tile_stone);
		}
		//Right-Up
		if(x+tile < room_width-tile) and (y-tile > tile){
			instance_create_layer(x+tile, y-tile, "Instances", obj_tile_stone);
		}
		//Right-Down
		if(x+tile < room_width-tile) and (y+tile < room_height-tile){
			instance_create_layer(x+tile, y+tile, "Instances", obj_tile_stone);
		}
		//Left-Down
		if(x-tile > tile) and (y+tile < room_height-tile){
			instance_create_layer(x-tile, y+tile, "Instances", obj_tile_stone);
		}
		//Left-Up
		if(x-tile > tile) and (y-tile > tile){
			instance_create_layer(x-tile, y-tile, "Instances", obj_tile_stone);
		}
		//Right 2x
		if(x+2*tile < room_width-tile){
			instance_create_layer(x+2*tile,y, "Instances", obj_tile_stone);
		}
		//Down 2x
		if(y+2*tile < room_height-tile){
			instance_create_layer(x, y+2*tile, "Instances", obj_tile_stone);
		}
		//Left 2x
		if(x-2*tile > tile){
			instance_create_layer(x-2*tile, y, "Instances", obj_tile_stone);
		}
		//Up 2x
		if(y-2*tile > tile){
			instance_create_layer(x,y-2*tile, "Instances", obj_tile_stone);
		}
		
		randomDir = floor(random(4));
		switch(randomDir){
			case 0: //right
				x+=2*tile;
			break;
			case 1: //down;
				y+=2*tile;
			break;
			case 2: //left
				x-=2*tile;
			break;
			case 3: //up
				y-=2*tile;
			break;
		}
		//Delete brush
		instance_destroy();
	}
}


//Copper
with(obj_tile_copper){
	tile = global.tileSize;
	var i;
	for(i = 0; i<10;i++){
		//brush size;
		
		//Center
		instance_create_layer(x, y, "Instances", obj_tile_copper);
		//Right
		if(x+tile < room_width-tile){
			instance_create_layer(x+tile, y, "Instances", obj_tile_copper);
		}
		//Down
		if(y+tile < room_height-tile){
			instance_create_layer(x, y+tile, "Instances", obj_tile_copper);
		}
		//Left
		if(x-tile > tile){
			instance_create_layer(x-tile, y, "Instances", obj_tile_copper);
		}
		//Up
		if(y-tile > tile){
			instance_create_layer(x, y-tile, "Instances", obj_tile_copper);
		}
		//Right-Up
		if(x+tile < room_width-tile) and (y-tile > tile){
			instance_create_layer(x+tile, y-tile, "Instances", obj_tile_copper);
		}
		//Right-Down
		if(x+tile < room_width-tile) and (y+tile < room_height-tile){
			instance_create_layer(x+tile, y+tile, "Instances", obj_tile_copper);
		}
		//Left-Down
		if(x-tile > tile) and (y+tile < room_height-tile){
			instance_create_layer(x-tile, y+tile, "Instances", obj_tile_copper);
		}
		//Left-Up
		if(x-tile > tile) and (y-tile > tile){
			instance_create_layer(x-tile, y-tile, "Instances", obj_tile_copper);
		}
		//Right 2x
		if(x+2*tile < room_width-tile){
			instance_create_layer(x+2*tile,y, "Instances", obj_tile_copper);
		}
		//Down 2x
		if(y+2*tile < room_height-tile){
			instance_create_layer(x, y+2*tile, "Instances", obj_tile_copper);
		}
		//Left 2x
		if(x-2*tile > tile){
			instance_create_layer(x-2*tile, y, "Instances", obj_tile_copper);
		}
		//Up 2x
		if(y-2*tile > tile){
			instance_create_layer(x,y-2*tile, "Instances", obj_tile_copper);
		}
		
		randomDir = floor(random(4));
		switch(randomDir){
			case 0: //right
				x+=2*tile;
			break;
			case 1: //down;
				y+=2*tile;
			break;
			case 2: //left
				x-=2*tile;
			break;
			case 3: //up
				y-=2*tile;
			break;
		}
		//Delete brush
		instance_destroy();
	}
}

//IROn

with(obj_tile_iron){
	tile = global.tileSize;
	var i;
	for(i = 0; i<10;i++){
		//brush size;
		
		//Center
		instance_create_layer(x, y, "Instances", obj_tile_iron);
		//Right
		if(x+tile < room_width-tile){
			instance_create_layer(x+tile, y, "Instances", obj_tile_iron);
		}
		//Down
		if(y+tile < room_height-tile){
			instance_create_layer(x, y+tile, "Instances", obj_tile_iron);
		}
		//Left
		if(x-tile > tile){
			instance_create_layer(x-tile, y, "Instances", obj_tile_iron);
		}
		//Up
		if(y-tile > tile){
			instance_create_layer(x, y-tile, "Instances", obj_tile_iron);
		}
		//Right-Up
		if(x+tile < room_width-tile) and (y-tile > tile){
			instance_create_layer(x+tile, y-tile, "Instances", obj_tile_iron);
		}
		//Right-Down
		if(x+tile < room_width-tile) and (y+tile < room_height-tile){
			instance_create_layer(x+tile, y+tile, "Instances", obj_tile_iron);
		}
		//Left-Down
		if(x-tile > tile) and (y+tile < room_height-tile){
			instance_create_layer(x-tile, y+tile, "Instances", obj_tile_iron);
		}
		//Left-Up
		if(x-tile > tile) and (y-tile > tile){
			instance_create_layer(x-tile, y-tile, "Instances", obj_tile_iron);
		}
		//Right 2x
		if(x+2*tile < room_width-tile){
			instance_create_layer(x+2*tile,y, "Instances", obj_tile_iron);
		}
		//Down 2x
		if(y+2*tile < room_height-tile){
			instance_create_layer(x, y+2*tile, "Instances", obj_tile_iron);
		}
		//Left 2x
		if(x-2*tile > tile){
			instance_create_layer(x-2*tile, y, "Instances", obj_tile_iron);
		}
		//Up 2x
		if(y-2*tile > tile){
			instance_create_layer(x,y-2*tile, "Instances", obj_tile_iron);
		}
		
		randomDir = floor(random(4));
		switch(randomDir){
			case 0: //right
				x+=2*tile;
			break;
			case 1: //down;
				y+=2*tile;
			break;
			case 2: //left
				x-=2*tile;
			break;
			case 3: //up
				y-=2*tile;
			break;
		}
		//Delete brush
		instance_destroy();
	}
}

//Coal

with(obj_tile_coal){
	tile = global.tileSize;
	var i;
	for(i = 0; i<10;i++){
		//brush size;
		
		//Center
		instance_create_layer(x, y, "Instances", obj_tile_coal);
		//Right
		if(x+tile < room_width-tile){
			instance_create_layer(x+tile, y, "Instances", obj_tile_coal);
		}
		//Down
		if(y+tile < room_height-tile){
			instance_create_layer(x, y+tile, "Instances", obj_tile_coal);
		}
		//Left
		if(x-tile > tile){
			instance_create_layer(x-tile, y, "Instances", obj_tile_coal);
		}
		//Up
		if(y-tile > tile){
			instance_create_layer(x, y-tile, "Instances", obj_tile_coal);
		}
		//Right-Up
		if(x+tile < room_width-tile) and (y-tile > tile){
			instance_create_layer(x+tile, y-tile, "Instances", obj_tile_coal);
		}
		//Right-Down
		if(x+tile < room_width-tile) and (y+tile < room_height-tile){
			instance_create_layer(x+tile, y+tile, "Instances", obj_tile_coal);
		}
		//Left-Down
		if(x-tile > tile) and (y+tile < room_height-tile){
			instance_create_layer(x-tile, y+tile, "Instances", obj_tile_coal);
		}
		//Left-Up
		if(x-tile > tile) and (y-tile > tile){
			instance_create_layer(x-tile, y-tile, "Instances", obj_tile_coal);
		}
		//Right 2x
		if(x+2*tile < room_width-tile){
			instance_create_layer(x+2*tile,y, "Instances", obj_tile_coal);
		}
		//Down 2x
		if(y+2*tile < room_height-tile){
			instance_create_layer(x, y+2*tile, "Instances", obj_tile_coal);
		}
		//Left 2x
		if(x-2*tile > tile){
			instance_create_layer(x-2*tile, y, "Instances", obj_tile_coal);
		}
		//Up 2x
		if(y-2*tile > tile){
			instance_create_layer(x,y-2*tile, "Instances", obj_tile_coal);
		}
		
		randomDir = floor(random(4));
		switch(randomDir){
			case 0: //right
				x+=2*tile;
			break;
			case 1: //down;
				y+=2*tile;
			break;
			case 2: //left
				x-=2*tile;
			break;
			case 3: //up
				y-=2*tile;
			break;
		}
		//Delete brush
		instance_destroy();
	}
}


//Water
with(obj_tile_water){
	tile = global.tileSize;
	var i;
	for(i = 0; i<10;i++){
		//brush size;
		
		//Center
		instance_create_layer(x, y, "Instances", obj_tile_water);
		//Right
		if(x+tile < room_width-tile){
			instance_create_layer(x+tile, y, "Instances", obj_tile_water);
		}
		//Down
		if(y+tile < room_height-tile){
			instance_create_layer(x, y+tile, "Instances", obj_tile_water);
		}
		//Left
		if(x-tile > tile){
			instance_create_layer(x-tile, y, "Instances", obj_tile_water);
		}
		//Up
		if(y-tile > tile){
			instance_create_layer(x, y-tile, "Instances", obj_tile_water);
		}
		//Right-Up
		if(x+tile < room_width-tile) and (y-tile > tile){
			instance_create_layer(x+tile, y-tile, "Instances", obj_tile_water);
		}
		//Right-Down
		if(x+tile < room_width-tile) and (y+tile < room_height-tile){
			instance_create_layer(x+tile, y+tile, "Instances", obj_tile_water);
		}
		//Left-Down
		if(x-tile > tile) and (y+tile < room_height-tile){
			instance_create_layer(x-tile, y+tile, "Instances", obj_tile_water);
		}
		//Left-Up
		if(x-tile > tile) and (y-tile > tile){
			instance_create_layer(x-tile, y-tile, "Instances", obj_tile_water);
		}
		//Right 2x
		if(x+2*tile < room_width-tile){
			instance_create_layer(x+2*tile,y, "Instances", obj_tile_water);
		}
		//Down 2x
		if(y+2*tile < room_height-tile){
			instance_create_layer(x, y+2*tile, "Instances", obj_tile_water);
		}
		//Left 2x
		if(x-2*tile > tile){
			instance_create_layer(x-2*tile, y, "Instances", obj_tile_water);
		}
		//Up 2x
		if(y-2*tile > tile){
			instance_create_layer(x,y-2*tile, "Instances", obj_tile_water);
		}
		
		randomDir = floor(random(4));
		switch(randomDir){
			case 0: //right
				x+=2*tile;
			break;
			case 1: //down;
				y+=2*tile;
			break;
			case 2: //left
				x-=2*tile;
			break;
			case 3: //up
				y-=2*tile;
			break;
		}
		//Delete brush
		instance_destroy();
	}
}



//global.grid = ds_grid_create(global.tileWidth, global.tileHeigth);
//generate();

