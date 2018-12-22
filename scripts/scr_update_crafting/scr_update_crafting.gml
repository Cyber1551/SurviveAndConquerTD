

with(obj_player){
	var item_list;
	
	for(var i = 0; i < sprite_get_number(tiles); i++){
		item_list[i] = 0;
	}
	//show_message(array_length_1d(item_list));
	for(var i=0;i< 10; i++){
		if(inv[i] > -1){
			var item_type = inv[i];
			var item_amt = inv_num[i];
			//show_message(item_type);
			//show_message(item_list[item_type]);
			item_list[item_type] += item_amt;
		}
	}
	
}

with(obj_crafting_control){
	
	for(var i=0;i< crafts; i++){ //0;  //1
		var canmake = 0;
			for(var j=0;j< craft[i, 2]; j++){ //1 (AMT); //2
				var check_type = craft[i, 3+(j*2)];  //6 (II) 1)6, 2)7
				//show_message(check_type);
				var check_amt = craft[i, 4+(j*2)]; //1 (AMT) 1)4, 2)4
				
				//show_message(check_type);
				//show_message(item_list[check_type]);
				if(item_list[check_type] >= check_amt){  //item_list[6] >= 1; 1)item_list[6] >= 4, 2) item_list[7] >= 4
					canmake++;
				}
				
				
				if(canmake == craft[i, 2]){
					cancraft[i] = true;
				}else{
					cancraft[i] = false;
				}
				
			}
	}
}

