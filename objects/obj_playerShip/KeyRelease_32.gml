/// Action button/Attack
// You can write your code in this editor

//var s = object_get_name(inv[sel]);

switch(inv[sel]){

case 10:

if(canAttack){
//global.hunger-=0.03;
//global.thirst-=0.03;
globalvar p;
image_speed = 1.3;
	switch(sprite_index){
		case spr_maleWalkLeft:
			//show_message(image_speed);
			p = spr_maleWalkLeft;
			sprite_index = spr_maleRapierLeft;
		break;
		case spr_maleWalkDown:
			//show_message(image_speed);
			 p = spr_maleWalkDown;
			sprite_index = spr_maleRapierDown;
		break;
		case spr_maleWalkRight:
			//show_message(image_speed);
			p = spr_maleWalkRight;
			sprite_index = spr_maleRapierRight;
		break;
		case spr_maleWalkUp:
			//show_message(image_speed);
			p = spr_maleWalkUp;
			sprite_index = spr_maleRapierUp;
		break;
	}
	
	
break;


}



		
}