/// @description Insert description here
// You can write your code in this editor
if(opened and canOpen){
	for(var i = 0; i < 10; i++){
	
					if((obj_playerShip.inv[i] == -1) or (obj_playerShip.inv[i] == 3)){
						obj_playerShip.inv[i] = 3;
						obj_playerShip.inv_num[i]+=3;

						// update = true;
					break;
					}
		
	}
	for(var i = 0; i < 10; i++){
	
					if((obj_playerShip.inv[i] == -1) or (obj_playerShip.inv[i] == 4)){
						obj_playerShip.inv[i] = 4;
						obj_playerShip.inv_num[i]+=1;

						// update = true;
					break;
					}
		
	}
	for(var i = 0; i < 10; i++){
	
					if((obj_playerShip.inv[i] == -1) or (obj_playerShip.inv[i] == 7)){
						obj_playerShip.inv[i] = 7;
						obj_playerShip.inv_num[i]+=1;

						// update = true;
					break;
					}
		
	}
	scr_update_crafting();
	canOpen = false;
}
