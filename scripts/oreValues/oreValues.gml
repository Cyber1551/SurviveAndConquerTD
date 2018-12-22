ore = argument0;
switch(ore){
	case "stone":
	self.oreValue = floor(random(500))+500;
	break;
	case "coal":
	self.oreValue = floor(random(400))+600;
	break;
	case "iron":
	self.oreValue = floor(random(400))+400;
	break;
	case "copper":
	self.oreValue = floor(random(300))+500;
	break;
	case "tree":
	self.oreValue = floor(random(10))+5;
	break;
	
}

//self.oreValue = floor(random(500))+500;
overlapping = instance_place(x, y, object_index);

with(overlapping){
	if(id < other.id){
		other.oreValue+=self.oreValue;
		instance_destroy();
	}
}