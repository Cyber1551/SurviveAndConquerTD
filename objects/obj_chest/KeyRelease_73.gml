/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_playerShip) <= 50){
	switch(opened){
		case false:
			opened = true;
			ii = 3;
		break;
		case true:
			opened = false;
			ii = 2;
		break;
	}
}