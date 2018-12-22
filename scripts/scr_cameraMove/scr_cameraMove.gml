view_xview[0] = x-view_wview[0]/2;
view_yview[0] = y-view_hview[0]/2;


if(mouse_x <= view_xview[0]+10){
	//Left
}
if(mouse_x >= (view_wview[0]-10)+view_xview[0]){
	//right
	if(x < room_width-view_wview[0]/2){
		x+=global.cameraSpeed;
	}
}