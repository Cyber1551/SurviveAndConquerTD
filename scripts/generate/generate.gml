for(var i = 0; i < global.tileWidth; i++){
	for(var j = 0; j < global.tileHeigth; j++){
	var zz = getPerlinNoise_2D(i, j, 100);
	//ds_grid_add(grid, i, 0, zz);
	global.grid[# i, j] = zz;
}
}