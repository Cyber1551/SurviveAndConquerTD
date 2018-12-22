/// @description Insert description here
// You can write your code in this editor
//show_message(true);
if(other.id != creator){
	other.hlth-=damage;
	/*var dir = point_direction(x, y, other.x, other.y);
	var xforce = lengthdir_x(knock, dir);
	var yforce = lengthdir_y(knock, dir);
	
	with(other){
		physics_apply_impulse(x, y, xforce, yforce);
	}*/
	with(other){
		//speed=-8;
		//alarm[2] = 5;
		switch(obj_player.dir){
			case 0: //Up
				y-=32;
			break;
			case 1: //down
				y+=32;
			break;
			case 2://left
				x-=32;
			break;
			case 3://right
			x+=32;
			break;
		}
	}
}