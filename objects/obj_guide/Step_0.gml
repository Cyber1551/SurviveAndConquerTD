/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_player)){
 if(keyboard_check_pressed(ord("E"))){
	if(textbox == noone){
		textbox = instance_create_layer(x, y, "Text", obj_text);
		textbox.txt = txtArr;
		textbox.creator = self;
		textbox.txtname = myname;
		if(q == true){
		textbox.page = 2;
		}
	}
	}
if(answer != 0){
q = true;
	switch(answer){
		case 1:
			txtArr[3] = "My name is Luvon, I am a Elven Wizard. I sent my Grimoire down to earth hoping a promising young adventure would find it.";
		break;
		case 2:
			txtArr[3] = "A dark wizard named Jax released a powerful dark magic on this realm turning all our once peaceful creatures into dark horrid beings. >";
			txtArr[4] = "This realm and all its people desperatly needs your help to stop Jax and restore peace. It is why the Grimoire brought you here.";
		break;
		case 3:
			txtArr[3] = "A Grimoire is a book that holds all a wizards spells and skills. Use 'Q' to access your Grimoire, as you level up and learn new spells they will appear in there";
		break
		case 4:
			txtArr[3] = "Great no wonder my Grimoire chose you. I believe you will bring peace to this realm. >";
			txtArr[4] = "A couple of miles south there is a town named Oma, talk to the Witch named Bell and she will sort out your battle training. Good Luck!";
		break;
	}
	textbox.page+=1;
	answer=0;
}
}else{
		if(textbox != noone){
			instance_destroy(textbox);
			textbox = noone;
		}
}
