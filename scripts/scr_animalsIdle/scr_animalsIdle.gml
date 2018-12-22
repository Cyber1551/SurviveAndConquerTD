image_speed = 0;

if(self.killed = false and self.idle = true){
	self.idleMovement -= 1;
	if(self.idleMovement <= 0){
		self.idleDir = floor(random(8));
		self.idleMovement = random(400)+20;
	}
	switch(self.idleDir){
		case 0: //Up
		image_speed = .7;
			if(self.object_index == obj_wolf){
				
				sprite_index = spr_wolf_walk_up;
			}else{
				sprite_index = spr_cow_walk_up;
			}
			if(y > 64){
			y-=global.animIdle;
			}else{
				self.idleDir = 1;
			}
		break;
		case 1: //down
		image_speed = .7;
			if(self.object_index == obj_wolf){
				sprite_index = spr_wolf_walk_down;
			}else{
				sprite_index = spr_cow_walk_down;
			}
			if(y < room_height-64){
			y+=global.animIdle;
			}else{
				self.idleDir = 0;
			}
		break;
		case 2: //Left
		image_speed = .7;
			if(self.object_index == obj_wolf){
				sprite_index = spr_wolf_walk_left;
			}else{
				sprite_index = spr_cow_walk_left;
			}
			if(x > 64){
			x-=global.animIdle;
			}else{
				self.idleDir = 3;
			}
		break;
		case 3: //right
		image_speed = .7;
			if(self.object_index == obj_wolf){
				sprite_index = spr_wolf_walk_right;
			}else{
				sprite_index = spr_cow_walk_right;
			}
			if(x < room_width-64){
			x+=global.animIdle;
			}else{
				self.idleDir = 2;
			}
		break;
		case 4:
		image_index = 0;
		break;
		case 5:
		image_index = 0;
		break;
		case 6:
		
		image_index = 0;
		break;
		case 7:
		image_index = 0;
		break;
	}
}

if(self.killed){
	alarm[0] = 1;
}