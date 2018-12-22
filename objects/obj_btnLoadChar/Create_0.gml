///initialize button

text = "Load Character";
width = 128;
height = 32;
hover = false;
display_x = xstart*global.displayScale;
display_y = ystart*global.displayScale;
dis = false;
if(file_exists("Save.sav")){
	ini_open("Save.sav");
if(ini_section_exists("Player")){
	dis = false;
	}else{
	dis = true;
	}
ini_close();

}