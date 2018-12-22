/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 10; i++){

		if((inv[i] == -1) or (inv[i] == other.ii)){
			inv[i] = other.ii;
			inv_num[i]++;
			with(other){
				instance_destroy();
			}
			update = true;
			break;
		}
	
	}
	if(update){
	update=false;
	scr_update_crafting();
}