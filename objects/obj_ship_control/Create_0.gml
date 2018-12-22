/// @description Insert description here
// You can write your code in this editor
blockSize = 32;
width = room_width div blockSize;
height = room_height div blockSize;

var third = height div 3;
var wthird = width div 3;


for(var xx = 0; xx < width; xx++){
	for(var yy = third; yy < height-third; yy++){
		instance_create_layer(xx*32, yy*32, "Instances", obj_floor);
	}
	instance_create_layer(xx*32, (third-1)*32, "Instances", obj_wall);
	instance_create_layer(xx*32, (height-(third))*32, "Instances", obj_wall);
} 

global.canMove = false;
instance_create_layer(x+32, y+32, "Instances", obj_tutTxt1);
