/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x+64, y+64, "Instances", obj_rapier);
global.hlth = 100;
global.hunger = 100;
global.thirst = 100;
attacked = false;
canAttack = true;
attackTimer = 25;
dmg = 10;
depth = -100;
image_speed = 0;
walkSpeed = 2.5;
collisionSpeed = walkSpeed+1;
dir = -1;
global.breaking = false;

sel = 0;
update = false;

for(var i = 0; i < 10; i++){
	inv[i] = -1;
	
}
for(var ii = 0; ii < 10; ii++){
	inv_num[ii] = 0;
}



if(file_exists("Save.sav")){
ini_open("Save.sav");
gender = ini_read_string("Player", "Sex", "Male");
name = ini_read_string("Player", "Name", "John");
ini_close();
}else{
show_message("Error reading file");
room_goto(MainMenu);
}

/*for(var i = 0; i < global.tileWidth; i++){
	for(var j = 0; j < global.tileHeigth; j++){
		
		if(color_get_blue(global.grid[# i, j]) != 0){
		show_message(color_get_blue(global.grid[# i, j]))
			x = round(random_range(128, room_width-128));
			y = round(random_range(128, room_height-128));
			break;
		}
	}
}*/


//global.ground = layer_get_name("World");
//global.tm = layer_tilemap_create(global.ground, 0, 0, tileset1, room_width, room_height);

