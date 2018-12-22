//if(file_exists("Save.sav")) file_delete("Save.sav");
ini_open("Save.sav");

ini_write_string("Player", "Name", global.name);
ini_write_string("Player", "Sex", global.sex);
ini_write_real("Player", "Health", global.hlth);
ini_write_real("Player", "MaxHealth", global.maxHlth);
ini_write_real("Player", "Hunger", global.hunger);
ini_write_real("Player", "MaxHunger", global.maxHunger);
ini_write_real("Player", "Thirst", global.thirst);
ini_write_real("Player", "MaxThirst", global.maxThirst);
ini_close();